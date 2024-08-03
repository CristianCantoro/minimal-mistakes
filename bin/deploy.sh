#!/usr/bin/env bash
#
# Website deploy script
#
# Original version inspired by Matteo Lissandrini
# https://github.com/kuzeko/
#    Academic-Webpage-Docpad-Boilerpate/blob/master/bin/deploy.sh
#
# copyright 2018-2024 Cristian Consonni
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the “Software”), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.

# shellcheck disable=SC2128
SOURCED=false && [ "$0" = "$BASH_SOURCE" ] || SOURCED=true

if ! $SOURCED; then
  set -euo pipefail
  IFS=$'\n\t'
fi

#################### exit statuses
EXIT_SUCCESS=0
EXIT_ERROR_OPTS=2
#################### end:exit statuses


#################### help
short_usage(){
  (>&2 echo \
"Usage:
  deploy.sh [options]
  deploy.sh ( -h | --help )
  deploy.sh ( -V | --version )"
  )
}

usage(){
  short_usage
  (>&2 echo \
"Deploy the website to production.

Options:
  -d, --debug         Enable debug output (implies -v).
  -e ENV_FILE, --env-file ENV_FILE
                      Environment file to read the configuration from.
                      [default: <repo_base>/.environment]
  -h, --help          Show this help and exits.
  -n, --dry-run       Dry-run, does not deploy any file.
  -p, --push          Push repo before deplying.
  -q, --quiet         Suppress output (incompatible with --debug or --verbose).
  -r RUBY_VERSION, --ruby-version RUBY_VERSION
                      Override Ruby version to use.
  -s, --size-only     Pass --size-only option to rsync.
  -t, --tunnel        Tunnel connection (see .environment).
  -v, --verbose       Enable verbose output.
  -V, --version       Show version information."
  )
}

version(){
  (>&2 echo \
"deploy.sh 0.2.0
copyright (c) 2018-2024 Cristian Consonni
MIT License
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law."
  )
}

debug=false
dry_run=""
ENV_FILE=""
push_repo=false
quiet=false
ruby_version_cli=""
size_only=""
tunnel=false
verbose=false

# complain to STDERR and exit with error
while getopts ":denpr:stqvVh-:" OPT; do
  # support long options
  #   https://stackoverflow.com/a/28466267/519360
  #
  # long option: reformulate OPT and OPTARG
  if [ "$OPT" = "-" ]; then
    # extract long option name
    OPT="${OPTARG%%=*}"
    # extract long option argument (may be empty)
    OPTARG="${OPTARG#"$OPT"}"
    # if long option argument, remove assigning `=`
    OPTARG="${OPTARG#=}"
  fi
  case $OPT in
    d|debug)
      debug=true
      ;;
    e|env-file)
      ENV_FILE="$OPTARG"
      ;;
    n|dry-run)
      dry_run="-n"
      ;;
    p|push)
      push_repo=true
      ;;
    r|ruby-version)
      ruby_version_cli="$OPTARG"
      ;;
    s|size-only)
      size_only="--size-only"
      ;;
    t|tunnel)
      tunnel=true
      ;;
    q|quiet)
      quiet=true
      ;;
    v|verbose)
      verbose=true
      ;;
    V|version)
      version
      exit $EXIT_SUCCESS
      ;;
    h|help)
      usage
      exit $EXIT_SUCCESS
      ;;
    \?)
      (>&2 echo "Error. Invalid option: -$OPTARG")
      short_usage
      exit $EXIT_ERROR_OPTS
      ;;
    :)
      (>&2 echo "Option -$OPTARG requires an argument." )
      short_usage
      exit $EXIT_ERROR_OPTS
      ;;
    *)
      (>&2 echo "Illegal option --$OPT" )
      exit $EXIT_ERROR_OPTS
      ;;
  esac
done

if ($debug || $verbose) && $quiet; then
  (>&2 echo "Error: --quiet and --debug/--verbose options are incompatible.")
  short_usage
  exit EXIT_ERROR_OPTS
fi

# -d (debug) implies -v (verbose)
if $debug; then
  verbose=true
fi
#################### end: help


#################### Utils
if $debug; then
  echodebug() {
    (>&2 echo -en "[$(date '+%F_%k:%M:%S')][debug]\\t" )
    (>&2 echo "$@" )
  }
 else
  echodebug() { true; }
 fi

 if $verbose; then
  echoverbose() {
    (>&2 echo -en "[$(date '+%F_%k:%M:%S')][info]\\t" )
    (>&2 echo "$@" )
  }
 else
  echoverbose() { true; }
 fi

if $quiet; then
  mute_cmd() {
    "$@" >/dev/null
  }

  echoquiet() { true; }
else
  mute_cmd() { "$@"; }
  echoquiet() { echo "$@"; }
fi
####################

# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then
  # First try to load from a user install
  echodebug "Loading RVM from home"

  set +u
  # shellcheck disable=SC1090
  source "$HOME/.rvm/scripts/rvm"
  set -u
elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then
  # Then try to load from a root install
  echodebug "Loading RVM from usr/local"

  set +u
  # shellcheck disable=SC1091
  source "/usr/local/rvm/scripts/rvm"
  set -u
else
  (>&2 printf "ERROR: An RVM installation was not found.\\n")
  exit -1
fi

if [ -z "$dry_run" ]; then
  echodebug "dry_run: (unset)"
else
  echodebug "dry_run: $dry_run"
fi

if [ -z "$size_only" ]; then
  echodebug "size_only: (unset)"
else
  echodebug "size_only: $size_only"
fi

echodebug "push_repo: $push_repo"
echodebug "tunnel: $tunnel"

echoverbose ""

# Set the environment by loading from the file .environment in the base
# directory
scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
repo_basedir=$(cd "$scriptdir" && git rev-parse --show-toplevel)

if [ -z "$ENV_FILE" ]; then
  ENV_FILE="$repo_basedir/.environment"
fi

echodebug "ENV_FILE: $ENV_FILE"

# shellcheck disable=SC1090
source "$ENV_FILE"

if $push_repo; then
  echoverbose ""
  echoverbose "Pushing git repo: git push origin master"
  echoverbose ""

  verbosity_flag='--quiet'
  if $verbose; then
    verbosity_flag=''
  fi

  git push "$verbosity_flag" $REPO_REMOTE $REPO_BRANCH
fi

# if Ruby version was specified from the cli, override the config read from
# .enviroment
if [ ! -z "$ruby_version_cli" ]; then
  RUBY_VERSION="$ruby_version_cli"
fi

echodebug "RUBY_VERSION: $RUBY_VERSION"

echoverbose "Deploying ${repo_basedir}/${DEPLOY_SOURCE_DIR} to "\
     "${DEPLOY_ACCOUNT}@${DEPLOY_SERVER}:${DEPLOY_DEST_DIR}"

if $tunnel; then
  echoverbose "---> tunneling through ${TUNNEL_SERVER}:${TUNNEL_PORT}"
fi

echoverbose ""
echoverbose "Regenerating static files with jekyll"
echoverbose ""

echoquiet "--> Build site with jekyll (RUBY_VERSION: $RUBY_VERSION)"

if $debug; then
  set -x
fi
set +eu
mute_cmd rvm use "$RUBY_VERSION"
mute_cmd jekyll build
set -eu
set +x

echoquiet ''

echoverbose -n "Clean up directory "
chmod -R og+Xr "${repo_basedir}/${DEPLOY_SOURCE_DIR}"
find . -type f -name '*.DS_Store' -ls -delete

if $verbose; then
  echo "...done"
fi

# Transfer to server with rsync
echoverbose ""
echoverbose "Performing transfer to server"

# Ensure .deployignore exists
touch "${repo_basedir}/.deployignore"

verbosity_flag='-v'
if $quiet; then
  verbosity_flag=''
fi

tunnel_option=''
tunnel_arg=''
if $tunnel; then
  tunnel_option='-e'
  tunnel_arg="ssh -p $TUNNEL_PORT"
  echoverbose "---> tunneling via $TUNNEL_SERVER:$TUNNEL_PORT"
fi

echoverbose ""

echoquiet "--> Transfer files from ${repo_basedir}/${DEPLOY_SOURCE_DIR} to "\
          "${DEPLOY_ACCOUNT}@${DEPLOY_SERVER}:${DEPLOY_DEST_DIR}"

if $debug; then
  set -x
fi

# https://github.com/koalaman/shellcheck/wiki/SC2086
# shellcheck disable=SC2086
rsync -rz --no-perms ${verbosity_flag:-} ${dry_run:-} ${size_only:-} \
        ${tunnel_option:-} ${tunnel_arg:-} \
        --delete \
        --exclude-from="${repo_basedir}/.deployignore" \
        "${repo_basedir}/${DEPLOY_SOURCE_DIR}/" \
        "${DEPLOY_ACCOUNT}@${DEPLOY_SERVER}:${DEPLOY_DEST_DIR}/"
set +x

echoquiet ''

exit $EXIT_SUCCESS
