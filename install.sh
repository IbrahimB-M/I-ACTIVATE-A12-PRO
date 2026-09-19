#!/bin/bash
# ==============================================================================
# I-ACTIVATE 12+ PRO — Automated System Installer & Launcher
# ==============================================================================

echo "=================================================================="
echo "         🚀 Installing I-ACTIVATE 12+ PRO (Linux System)"
echo "=================================================================="

# 1. Install System USB Dependencies (libimobiledevice / usbmuxd)
echo "[1/4] Checking and installing system dependencies..."
if command -v apt-get &> /dev/null; then
    sudo apt-get update -qq
    sudo apt-get install -y -qq usbmuxd libimobiledevice-utils ideviceinstaller > /dev/null 2>&1
elif command -v dnf &> /dev/null; then
    sudo dnf install -y -q usbmuxd libimobiledevice-utils > /dev/null 2>&1
elif command -v pacman &> /dev/null; then
    sudo pacman -S --noconfirm usbmuxd libimobiledevice > /dev/null 2>&1
fi

# 2. Reassemble Compiled Executable Binary
echo "[2/4] Assembling client executable binary..."
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
DIST_DIR="$SCRIPT_DIR/dist"
TEMP_BIN="$DIST_DIR/I-ACTIVATE-12+"

if [ ! -f "$TEMP_BIN" ] && [ -f "$DIST_DIR/I-ACTIVATE-12+.part_aa" ]; then
    echo "  Combining binary package parts..."
    cat "$DIST_DIR/I-ACTIVATE-12+.part_"* > "$TEMP_BIN"
fi

if [ ! -f "$TEMP_BIN" ]; then
    echo "❌ Executable binary missing at $TEMP_BIN!"
    exit 1
fi

chmod +x "$TEMP_BIN"

# 3. Install Executable to System PATH (/usr/local/bin)
echo "[3/4] Installing executable binary to system PATH..."
INSTALL_TARGET="/usr/local/bin/iactivate"
ALT_TARGET="/usr/local/bin/I-ACTIVATE-12+"

if sudo cp "$TEMP_BIN" "$INSTALL_TARGET" 2>/dev/null && sudo chmod +x "$INSTALL_TARGET"; then
    sudo ln -sf "$INSTALL_TARGET" "$ALT_TARGET" 2>/dev/null
    echo "✓ Successfully installed to /usr/local/bin/iactivate"
else
    # Fallback to user local bin if sudo unavailable
    USER_BIN_DIR="$HOME/.local/bin"
    mkdir -p "$USER_BIN_DIR"
    cp "$TEMP_BIN" "$USER_BIN_DIR/iactivate"
    chmod +x "$USER_BIN_DIR/iactivate"
    ln -sf "$USER_BIN_DIR/iactivate" "$USER_BIN_DIR/I-ACTIVATE-12+"
    echo "✓ Installed to $USER_BIN_DIR/iactivate"
fi

# 4. Clean Up Temporary Build Parts
echo "[4/4] Cleaning up temporary installation parts..."
rm -f "$DIST_DIR/I-ACTIVATE-12+.part_"* "$TEMP_BIN" 2>/dev/null

echo "=================================================================="
echo "🎉 INSTALLATION COMPLETE!"
echo "You can now run the app anytime from any terminal by typing:"
echo ""
echo "   iactivate"
echo "   OR"
echo "   I-ACTIVATE-12+"
echo "=================================================================="

# Launch app directly after installation
if command -v iactivate &> /dev/null; then
    exec iactivate "$@"
elif [ -f "$HOME/.local/bin/iactivate" ]; then
    exec "$HOME/.local/bin/iactivate" "$@"
fi
