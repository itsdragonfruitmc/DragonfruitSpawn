#!/bin/sh
set -e
GRADLE_VERSION=9.1
BASE_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
DIST="$BASE_DIR/.gradle-wrapper/gradle-$GRADLE_VERSION"
ZIP="$BASE_DIR/.gradle-wrapper/gradle-$GRADLE_VERSION-bin.zip"
if [ ! -x "$DIST/bin/gradle" ]; then
  mkdir -p "$BASE_DIR/.gradle-wrapper"
  if [ ! -f "$ZIP" ]; then
    command -v curl >/dev/null 2>&1 || { echo "curl is required to bootstrap Gradle."; exit 1; }
    curl -fL "https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip" -o "$ZIP"
  fi
  unzip -q -o "$ZIP" -d "$BASE_DIR/.gradle-wrapper"
fi
exec "$DIST/bin/gradle" "$@"
