#!/usr/bin/env bash
set -euo pipefail
RELEASE_VERSION="iei_genetics_release_v1"

# Paths
SRC_DIR="$HOME/web/iei_genetics/output"
RELEASE_DIR="$HOME/web/switzerlandomics/release/${RELEASE_VERSION}"

# Prepare release directory
rm -rf "$RELEASE_DIR"
mkdir -p "$RELEASE_DIR"

# Copy files and directories
cp -R "$SRC_DIR"/iei_genetics_table_v1* "$RELEASE_DIR"/
cp -R ./README.md "$RELEASE_DIR"/
cp -R licence "$RELEASE_DIR"/
cp -R ~/web/iei-genetics.github.io/assets/images/iei_genetics.png "$RELEASE_DIR"/

# Generate MD5 checksums for files only
cd "$RELEASE_DIR"
> MD5SUMS.txt
for f in *; do
  if [ -f "$f" ]; then
    md5 -r "$f" >> MD5SUMS.txt
  fi
done

# Create zip archive
cd ..
zip -r ${RELEASE_VERSION}.zip "$(basename "$RELEASE_DIR")"

