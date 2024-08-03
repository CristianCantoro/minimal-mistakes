#!/usr/bin/env bash
#
# Website testing script
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
EXIT_ERROR_RVM=1
#################### end:exit statuses

#################### help
short_usage(){
  (>&2 echo \
"Usage:
  test.sh [options]
  test.sh ( -h | --help )
  test.sh ( --version )"
  )
}

usage(){
  short_usage
  (>&2 echo \
"Deploy the website to production.

Options:
  -p PORT, --port PORT
                      Use the specified port [default: 5000].
  -r RUBY_VERSION, --ruby-version RUBY_VERSION
                      Set which ruby version to use with RVM
  -h, --help          Show this help message and exits.
  -V, --version       Print version and copyright information."
  )
}

version(){
  (>&2 echo \
"test.sh 0.4.0
copyright (c) 2018-2024 Cristian Consonni
MIT License
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law."
  )
}

ruby_version='default'
port='5000'

# complain to STDERR and exit with error
while getopts ":p:r:Vh-:" OPT; do
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
    h|help)
      usage
      exit $EXIT_SUCCESS
      ;;
    p|port)
      port="$OPTARG"
      ;;
    r|ruby-version)
      ruby_version_cli="$OPTARG"
      ;;
    V|version)
      version
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
      short_usage
      exit $EXIT_ERROR_OPTS
      ;;
  esac
done
#################### end: help


# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then
  # First try to load from a user install
  echo "Loading RVM from home"
  set +eu
  # shellcheck disable=SC1090
  source "$HOME/.rvm/scripts/rvm"
  set -eu
elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then
  # Then try to load from a root install
  echo "Loading RVM from usr/local"
  set +eu
  # shellcheck disable=SC1091
  source "/usr/local/rvm/scripts/rvm"
  set -eu
else
  (>&2 echo "ERROR: An RVM installation was not found.")
  exit $EXIT_ERROR_RVM
fi

# Set the environment by loading from the file "environment" in the base directory
set +eu
DIR="$( cd "$( dirname "$( dirname "$0" )" )" && pwd)"
set -eu

# shellcheck disable=SC1090
source "$DIR/.environment"

if [ ! -z "$port" ]; then
  TEST_PORT="$port"
fi

echo "== Testing webpage =="

echo ""
echo "Regenerating static files with jekyll"
echo ""
set +eu
rvm use "$ruby_version"
set -eu
echo "Using ruby version $(ruby --version), from $(command -v ruby)"
jekyll build --drafts --trace

echo ""
echo "Launching standalone server"
echo ""
echo "See http://$TEST_HOSTNAME:$TEST_PORT$TEST_BASEURL/"
echo ""
jekyll serve --config "$TEST_CONFIG" --port "$TEST_PORT" --drafts --watch

echo ""

exit $EXIT_SUCCESS