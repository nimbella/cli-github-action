#!/bin/sh

set -e

if [ -z "$INPUT_NIM_AUTH_TOKEN" ]; then
  echo "NIM_AUTH_TOKEN is not defined, exiting..." 
  exit 1
fi

echo "Authenticating Nimbella CLI with platform..."
nim auth login $INPUT_NIM_AUTH_TOKEN

if [ "$INPUT_AUTO_DEPLOY" = true ] ; then
  nim project deploy . $INPUT_NIM_CLI_OPTIONS
fi
