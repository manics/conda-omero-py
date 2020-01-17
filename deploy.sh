#!/bin/sh

set -eu

for package in $@; do
    anaconda -t "$CONDA_UPLOAD_TOKEN" upload --user "$ANACONDA_USER" $package
done
