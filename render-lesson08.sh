#!/usr/bin/env bash

set -e

claat export -f md -o codelabs 1QPnjraR-etKrUG4FQ3V_XTncv7EhshDCUlN-5c2pvy4
claat export -f html -o docs codelabs/08a-wiki-rest/index.md

claat export -f md -o codelabs 1vkfhGDiAPngVsKpx-f9MPgf3JIh5J_ihps6EoNSgowo
claat export -f html -o docs codelabs/08b-wiki-css/index.md
