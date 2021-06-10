#!/usr/bin/env bash

set -e

claat export -f md -o codelabs 1sKCh4mp2-2sgtrcO8zupvuEkQ2LYoclKkex9ey_6PII
claat export -f html -o docs codelabs/10a-wiki-retrospective/index.md

claat export -f md -o codelabs 1iur-kzqGxb2CokDCw__zwTvpoN8-GxATFwR72PQrms4
claat export -f html -o docs codelabs/10b-wiki-presentation/index.md
