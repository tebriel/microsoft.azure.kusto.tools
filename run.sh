#!/usr/bin/env bash

set -euo pipefail

if ! command -v dotnet > /dev/null; then
    echo "Please install dotnet"
    echo "https://learn.microsoft.com/en-us/dotnet/core/install/macos"
    exit 1
fi

dotnet bin/Kusto.Cli.dll "$@"
