#!/bin/bash
# ==============================================================================
# I-ACTIVATE 12+ PRO — Automated Linux Installer & Launcher
# ==============================================================================

echo "=================================================================="
echo "         🚀 Installing I-ACTIVATE 12+ PRO (Linux Edition)"
echo "=================================================================="

# 1. Install System Dependencies (libimobiledevice / usbmuxd)
echo "[1/3] Checking system dependencies..."
if command -v apt-get &> /dev/null; then
    sudo apt-get update -qq
    sudo apt-get install -y -qq usbmuxd libimobiledevice-utils ideviceinstaller > /dev/null 2>&1
elif command -v dnf &> /dev/null; then
    sudo dnf install -y -q usbmuxd libimobiledevice-utils > /dev/null 2>&1
elif command -v pacman &> /dev/null; then
    sudo pacman -S --noconfirm usbmuxd libimobiledevice > /dev/null 2>&1
fi

# 2. Reassemble & Set Execution Permissions
echo "[2/3] Preparing compiled binary executable..."
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
DIST_DIR="$SCRIPT_DIR/dist"
BIN_PATH="$DIST_DIR/I-ACTIVATE-12+"

if [ ! -f "$BIN_PATH" ] && [ -f "$DIST_DIR/I-ACTIVATE-12+.part_aa" ]; then
    echo "  Assembling binary package..."
    cat "$DIST_DIR/I-ACTIVATE-12+.part_"* > "$BIN_PATH"
fi

if [ -f "$BIN_PATH" ]; then
    chmod +x "$BIN_PATH"
else
    echo "❌ Executable binary not found at $BIN_PATH!"
    exit 1
fi

# 3. Launch App
echo "[3/3] Launching I-ACTIVATE 12+ PRO..."
echo "=================================================================="
"$BIN_PATH" "$@"
