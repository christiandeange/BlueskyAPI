#!/usr/bin/env bash

set -euo pipefail
set -x

ZIP_URL_TEMPLATE="https://repo1.maven.org/maven2/sh/christian/ozone/bluesky-kmmbridge/{version}/bluesky-kmmbridge-{version}.zip"

if [[ -z "${1}" ]]; then
  echo "Usage: $0 <new-version>" >&2
  exit 1
elif ! [[ "${1}" =~ ^([0-9]+)\.([0-9]+)\.([0-9]+)$ ]]; then
  echo "Error: '${1}' is not a valid semantic version." >&2
  echo "Usage: $0 <new-version>" >&2
  exit 1
fi

NEXT_VERSION="${1-}"

ZIP_URL="$(sed "s/{version}/$NEXT_VERSION/g" <<< "$ZIP_URL_TEMPLATE")"
SHA_URL="${ZIP_URL}.sha256"

CHECKSUM="$(curl -s $SHA_URL)"
echo $CHECKSUM

cp templates/Package.swift .

# Needed for portability with sed
SP=""
if [ $(uname) == "Darwin" ]; then
  SP=" "
fi
sed -i${SP}'' "s|{url}|$ZIP_URL|g" Package.swift
sed -i${SP}'' "s|{checksum}|$CHECKSUM|g" Package.swift
