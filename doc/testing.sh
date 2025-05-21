#!/bin/bash
set -e

rm -rf _build _publish
doc-builder/build_docs_all_versions

rm -rf _build_docker
./build_docs -r _build_docker -v latest -d -c

rm -rf _build_docker; ./build_docs -b _build_docker -d -c -v latest

exit 0