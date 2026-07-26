#!/usr/bin/env bash
set -euo pipefail

tag=${1:?release tag required}
dist=${2:?release archive directory required}
[[ "$tag" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]
version=${tag#v}

sha() {
  sha256sum "$dist/tk-$1.tar.gz" | cut -d ' ' -f 1
}

mac_arm=$(sha aarch64-apple-darwin)
mac_intel=$(sha x86_64-apple-darwin)
linux_arm=$(sha aarch64-unknown-linux-gnu)
linux_intel=$(sha x86_64-unknown-linux-gnu)

sed \
  -e "s/VERSION/$version/g" \
  -e "s/MAC_ARM_SHA/$mac_arm/" \
  -e "s/MAC_INTEL_SHA/$mac_intel/" \
  -e "s/LINUX_ARM_SHA/$linux_arm/" \
  -e "s/LINUX_INTEL_SHA/$linux_intel/" \
  scripts/tk.rb.template > Formula/tk.rb
