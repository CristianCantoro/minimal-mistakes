#!/usr/bin/env bash

# Website testing script
# (c) 2015 Cristian Consonni
# Released under the MIT license

set -o errexit

# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then

  # First try to load from a user install
  echo "Loading RVM from home"
  source "$HOME/.rvm/scripts/rvm"

elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then

  # Then try to load from a root install
  echo "Loading RVM from usr/local"
  source "/usr/local/rvm/scripts/rvm"

else

  printf "ERROR: An RVM installation was not found.\n"

fi

NFLAG=""
SFLAG=""

while getopts ":ns" opt; do
  case $opt in
    s)
      SFLAG="--size-only"
      ;;
    n)
      NFLAG="-n"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      echo "Valid Options: " >&2
      echo "  -s    :   --size-only" >&2
      echo "  -n   :   perform dry-run" >&2
      ;;
  esac
done

# Set the environment by loading from the file "environment" in the base directory
DIR="$( cd "$( dirname $( dirname "$0" ) )" && pwd)"
source "$DIR/.environment"

echo "== Testing webpage =="

echo ""
echo "Regenerating static files with jekyll"
echo ""
rvm use default
jekyll build

echo ""
echo "Launching standalone server"
echo "See http://$TEST_HOSTNAME:$TEST_PORT$TEST_BASEURL"
echo ""
jekyll serve --config "$TEST_CONFIG" --port "$TEST_PORT" -w

