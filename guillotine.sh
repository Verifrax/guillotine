#!/bin/sh
# GUILLOTINE v0.0.0
# Claude Code execution terminator
# One-way. No recovery. No discussion.

set -eu

git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 2

# Null-delimited, space-safe
DIRTY="$(git status --porcelain=v1 -z)"

# Clean state: nothing to cut
[ -z "$DIRTY" ] && exit 0

printf '%s' "$DIRTY" | while IFS= read -r -d '' entry; do
  path="${entry#??}"
  rm -rf -- "$path"
done

exit 1
