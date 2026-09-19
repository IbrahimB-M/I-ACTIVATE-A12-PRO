# 🚀 I-ACTIVATE 12+ PRO — Ultimate iOS Bypass & Recovery Suite

![Version](https://img.shields.io/badge/version-2.0%20PRO%20Ultimate-blue.svg)
![Platform](https://img.shields.io/badge/platform-Linux%2064--bit-orange.svg)
![Architecture](https://img.shields.io/badge/arch-x86__64-brightgreen.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

**I-ACTIVATE 12+ PRO** is an advanced, high-performance Linux desktop utility designed for automated USB hardware detection, log diagnostics, and system activation workflows for A12+ Bionic Apple devices.

---

## ✨ Features & Highlights

- 🎨 **Modern 3D Light Aesthetics**: Sleek, single-page dashboard interface with live hardware diagnostic badge indicators and an embedded collapsed terminal console.
- ⚡ **One-Click Automated Setup**: Single-command system installer that sets up USB daemons, configures executable permissions, and integrates directly into your system PATH.
- 📱 **Wide Device Compatibility**: Full support for A12+ iPhones & iPads on iOS 18.0+.
- 🔄 **Real-Time USB Connection Watcher**: Instant automatic device detection via Apple Mobile Device USB sub-system (`usbmuxd`).
- 🛡️ **Secure Execution**: Compiled standalone binary distribution ensuring zero runtime dependency conflicts.

---

## 📱 Supported Devices & iOS Versions

### 🍏 Supported Hardware Architecture (A12+ Bionic & Later)
- **iPhone XR / XS / XS Max** (iPhone11,2 / iPhone11,6 / iPhone11,8)
- **iPhone 11 / 11 Pro / 11 Pro Max** (iPhone12,1 / iPhone12,3 / iPhone12,5)
- **iPhone SE (2nd Gen & 3rd Gen)** (iPhone12,8 / iPhone14,6)
- **iPhone 12 / 12 Mini / 12 Pro / 12 Pro Max** (iPhone13,1 - iPhone13,4)
- **iPhone 13 / 13 Mini / 13 Pro / 13 Pro Max** (iPhone14,2 - iPhone14,5)
- **iPhone 14 / 14 Plus / 14 Pro / 14 Pro Max** (iPhone14,7 / iPhone14,8 / iPhone15,2 / iPhone15,3)
- **iPhone 15 Series & Newer**
- **iPad Models**: iPad Air (3rd Gen+), iPad Mini (5th Gen+), iPad Pro (11-inch & 12.9-inch A12X/A12Z+).

### ⚙️ Supported Firmware Versions
- **iOS 18.0** up to **iOS 26.x**

---

## 💻 System Requirements

- **Operating System**: Linux 64-bit (Ubuntu, Debian, Kali Linux, Fedora, Arch Linux, Manjaro, Pop!_OS)
- **USB Cable**: Original Apple USB-A / USB-C to Lightning / USB-C Cable
- **Permissions**: Sudo / Root access (for initial `usbmuxd` driver configuration during setup)

---

## 🛠️ One-Time Installation Guide

Run the automated installer **once** from your terminal to configure system dependencies and register the application command:

```bash
# 1. Clone the repository
git clone https://github.com/IbrahimB-M/I-ACTIVATE-A12-PRO.git

# 2. Navigate to the project directory
cd I-ACTIVATE-A12-PRO

# 3. Run the automated installer
bash install.sh
```

### 📦 What `install.sh` Does Automatically:
1. Detects your Linux distribution package manager (`apt`, `dnf`, or `pacman`).
2. Installs required Apple USB communication tools (`usbmuxd`, `libimobiledevice-utils`, `ideviceinstaller`).
3. Reassembles the compiled executable package.
4. Registers the application globally to `/usr/local/bin/iactivate`.
5. Creates a Desktop Application entry in your system's Applications menu (`I-ACTIVATE 12+ PRO`).
6. Cleans up temporary installation build parts.

---

## 🚀 How to Run the Tool

After running `install.sh` once, you can launch the app anytime using **either** of the following methods:

1. **From System Applications Menu:**
   - Search for **`I-ACTIVATE 12+ PRO`** in your Linux app menu / launcher and click to open.

2. **From Any Terminal Window:**
   ```bash
   iactivate
   ```

*or*
```bash
I-ACTIVATE-12+
```

The application window will launch immediately!

---

## 📖 User Guide & Step-by-Step Usage

1. **Launch the Application**: Type `iactivate` in your terminal.
2. **Connect Device**: Plug your iPhone or iPad into your computer using a USB cable.
3. **Automatic Detection**: The top status badge will change to **"Device Connected"** and display your device model, UDID, Product Type, and Serial Number.
4. **Server Status**: Verify that the top badge shows **"Server Online"**.
5. **Start Process**: Click the **"START ACTIVATION PROCESS"** button.
6. **Follow On-Screen Logs**: Monitor progress via the live step indicator bar and the bottom terminal logs.
7. **Completion**: Once finished, the interface will switch to the completion screen confirming your device setup.

---

## ❓ Frequently Asked Questions (FAQ)

<details>
<summary><b>Q: Do I need Python or pip installed?</b></summary>
<p>No. The application is compiled as a standalone binary package. All runtime libraries are self-contained.</p>
</details>

<details>
<summary><b>Q: My device is not detected when I plug it in. What should I do?</b></summary>
<p>Ensure <code>usbmuxd</code> service is running on your system by executing <code>sudo systemctl restart usbmuxd</code> in terminal, then re-plug your USB cable.</p>
</details>

---

## ⚠️ Disclaimer

This tool is distributed strictly for educational, security research, and authorized hardware recovery purposes. Ensure you have explicit authorization before servicing any device.
