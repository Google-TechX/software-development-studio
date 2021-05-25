#!/usr/bin/env bash

set -e

claat export -f md -o codelabs 1HBkS5tIfGLJP-HJylU0MOjXOFkFtZc98IRdxwIFxxJ8
claat export -f html -o docs codelabs/05a-wiki-prd/index.md

claat export -f md -o codelabs 1z_S6590BWrBPIaqkb96S9mX1Ifblc0JL-FsSVcxheYo
claat export -f html -o docs codelabs/05b-wiki-milestone-2/index.md

claat export -f md -o codelabs 1J-pc8Flz6206rYwyMd8hLPM-FWgxJ4LkWr8AgOW8XqI
claat export -f html -o docs codelabs/05c-wiki-milestone-3/index.md
