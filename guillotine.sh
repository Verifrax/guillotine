#!/bin/sh
# GUILLOTINE v0.0
# Claude Code execution terminator
# One-way. No recovery. No discussion.

set -euf

git rev-parse --is-inside-work-tree >/dev/null 2>&1 || {
  echo "GUILLOTINE: not a git repository"
  exit 2
}

# Null-delimited, space-safe
DIRTY="$(git status --porcelain=v1 -z)"

[ -z "$DIRTY" ] && {
  echo "GUILLOTINE: nothing to cut"
  exit 0
}

printf '%s' "$DIRTY" | while IFS= read -r -d '' entry; do
  path="${entry#??}"
  rm -rf -- "$path"
done

echo "GUILLOTINE: invalid or incomplete execution — state destroyed"
exit 1
