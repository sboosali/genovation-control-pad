#!/bin/bash
set -o xtrace
##################################################

GHCID_DIRECTORY=./.ghcid.d

GHCID_TARGET="${1:-}"
# e.g.:
# - all
# - <package>
# - ""
#   ^ (i.e. blank, which defaults to a single <package> when unambiguous)

GHCID_COMMAND="cabal new-repl ${GHCID_TARGET}"

GHCID_OUTPUT="${GHCID_DIRECTORY}/${GHCID_TARGET}.ghcid"

##################################################

mkdir -p "${GHCID_DIRECTORY}"

echo "${GHCID_OUTPUT}"

ghcid --command="${GHCID_COMMAND}" --outputfile="${GHCID_OUTPUT}" ##>/dev/null

##################################################