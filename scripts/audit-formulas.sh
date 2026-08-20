#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")/.." && pwd)
strict=0
if [[ "${1:-}" == "--strict" ]]; then
  strict=1
fi
syntax_fail=0
stale_fail=0

extract_version() {
  local file=$1
  local version
  version=$(sed -n 's/^[[:space:]]*version "\([^"]*\)".*/\1/p' "$file" | head -n 1)
  if [[ -z "$version" ]]; then
    version=$(sed -n 's|.*/tags/v\([0-9][0-9.]*\)\.tar.gz.*|\1|p' "$file" | head -n 1)
  fi
  printf '%s' "$version"
}

extract_repo() {
  local file=$1
  sed -n 's|.*github.com/\([^/" ]\{1,\}/[^/" ]\{1,\}\).*|\1|p' "$file" | head -n 1
}

printf '%-18s %-12s %-12s %s\n' "FORMULA" "TAP" "LATEST" "STATUS"
for formula in "$root"/Formula/*.rb; do
  if ! ruby -c "$formula" >/dev/null; then
    echo "syntax error: $formula" >&2
    syntax_fail=1
    continue
  fi

  name=$(basename "$formula" .rb)
  version=$(extract_version "$formula")
  repo=$(extract_repo "$formula")
  if [[ -z "$version" || -z "$repo" ]]; then
    printf '%-18s %-12s %-12s %s\n' "$name" "${version:-?}" "?" "unparsed"
    syntax_fail=1
    continue
  fi

  latest=$(gh release view --repo "$repo" --json tagName --jq '.tagName' | sed 's/^v//')
  if [[ "$version" == "$latest" ]]; then
    status=ok
  else
    status="stale"
    stale_fail=1
  fi
  printf '%-18s %-12s %-12s %s\n' "$name" "$version" "$latest" "$status"
done

if [[ "$syntax_fail" -ne 0 ]]; then
  exit 1
fi
if [[ "$strict" -eq 1 && "$stale_fail" -ne 0 ]]; then
  exit 1
fi
exit 0
