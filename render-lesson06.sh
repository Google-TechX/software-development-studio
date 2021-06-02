#!/usr/bin/env bash

set -e

claat export -f md -o codelabs 1pvf74NCNr5ySykfTzbLhxoRrArZvOSWYN5-tIZHY1LI
claat export -f html -o docs codelabs/06a-software-verification/index.md

claat export -f md -o codelabs 1IC2_XaaSklTBX1XGbUEsebXAEIwrWrs0s_zqX8pMj78
claat export -f html -o docs codelabs/06b-wiki-milestone-4/index.md
