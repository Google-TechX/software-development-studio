#!/usr/bin/env bash

set -e

claat export -f md -o codelabs 1koSDe5zsnxitPF2GpXdBlaHR3NzXUTF12nhCELksPhw
claat export -f html -o docs codelabs/07a-merge-request/index.md

claat export -f md -o codelabs 1_DhJLXsLFeIRO-xLXrvkNUxP3oT8tkyMeVnvnBW0WSk
claat export -f html -o docs codelabs/07b-wiki-milestone-5/index.md
