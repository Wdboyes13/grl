#!/bin/bash
set -e

OS=$(uname -s)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
case "$OS" in
    Linux*)     PLATFORM=linux;;
    Darwin*)    PLATFORM=mac;;
    CYGWIN*|MINGW*|MSYS*) PLATFORM=windows;;
    *)          PLATFORM=unknown;;
esac

COMMON_JAVA_OPTS="
  -XX:+TieredCompilation
  -XX:+UseCompressedOops
  -XX:+UseStringDeduplication
  -XX:+UseNUMA
  -XX:+UseFastAccessorMethods
  -XX:+OptimizeStringConcat
  -XX:+AlwaysPreTouch
  -Xverify:none
  -Xshare:auto
  -XX:+UnlockExperimentalVMOptions
  -XX:+TrustFinalNonStaticFields
  -XX:+UseG1GC
  -XX:+UseLargePages
  -Dsun.java2d.opengl=true
  -Djava.awt.headless=false
"

echo "Detected OS: $PLATFORM"

if [ "$PLATFORM" = "linux" ]; then
    echo "🐧 Running Linux-specific packaging..."
    JAVA_OPTS="--module-path $SCRIPT_DIR/lib/linux --add-modules javafx.controls,javafx.fxml"
elif [ "$PLATFORM" = "mac" ]; then
    echo "🍎 Running macOS-specific packaging..."
    ARCH=$(uname -m)
    if [[ "$ARCH" == "arm64" ]]; then
        echo "🍏 Apple Silicon (ARM64) detected!"
        JAVA_OPTS="--module-path $SCRIPT_DIR/lib/mac-aarch --add-modules javafx.controls,javafx.fxml"
    elif [[ "$ARCH" == "x86_64" ]]; then
        echo "🍏 Intel (x86_64) detected!"
        JAVA_OPTS="--module-path $SCRIPT_DIR/lib/mac --add-modules javafx.controls,javafx.fxml"
    else
        echo "🤔 Unknown Mac architecture: $ARCH"
        exit 1
    fi
elif [ "$PLATFORM" = "windows" ]; then
    echo "🪟 Windows detected. Please run run.bat instead!"
    exit 0
else
    echo "😵 Unknown platform, exiting..."
    exit 1
fi

# Common run command for Linux and Mac
echo "🚀 Launching app..."
exec java $COMMON_JAVA_OPTS $JAVA_OPTS -jar $SCRIPT_DIR/app-all.jar