#!/bin/bash
set -e
set -x

rm -rf _build _publish
doc-builder/build_docs_all_versions

rm -rf _build_docker
./build_docs -r _build_docker -v latest -d -c

rm -rf _build_docker
./build_docs -b _build_docker -d -c

cd doc-builder/test
make test

exit 0