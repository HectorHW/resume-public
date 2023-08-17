#!/bin/bash

# this script is intended to be run by webhook server
# $1 is workflow id

set -e

# we have to wait for gh actions to finish and nightly.link to update
sleep 5m

TEMPD=$(mktemp -d)

trap "exit 1"           HUP INT PIPE QUIT TERM
trap 'rm -rf "$TEMPD"'  EXIT

cd $TEMPD

curl -L -O https://nightly.link/HectorHW/resume-public/actions/runs/$1/PDF.zip

unzip PDF.zip

cp resume.pdf /var/www/resume/