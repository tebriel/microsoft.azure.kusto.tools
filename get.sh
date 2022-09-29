#!/usr/bin/env bash

set -euo pipefail

VERSION=7.0.0

rm -f ./kusto.tools.${VERSION}.nuget
rm -rf ./tools ./bin

mkdir -p bin

curl -L \
    -o ./kusto.tools.${VERSION}.nuget \
    https://www.nuget.org/api/v2/package/Microsoft.Azure.Kusto.Tools/${VERSION}

tar -xvf ./kusto.tools.${VERSION}.nuget --directory ./bin --strip-components=2 tools/netcoreapp2.1
