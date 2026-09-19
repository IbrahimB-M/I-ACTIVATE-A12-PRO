# 🚀 I-ACTIVATE 12+ PRO — Linux Release

## 📌 Requirements
- Linux 64-bit (Ubuntu, Debian, Fedora, Arch, Kali, etc.)
- USB Connection & `usbmuxd`

---

## ⚡ One-Time Installation (System Setup)

Clone the repository and run the automated installer script **once**:

```bash
git clone https://github.com/IbrahimB-M/I-ACTIVATE-A12-PRO.git
cd I-ACTIVATE-A12-PRO
bash install.sh
```

### What `install.sh` does automatically:
1. Installs system USB drivers (`usbmuxd`, `libimobiledevice-utils`, `ideviceinstaller`).
2. Assembles and installs the compiled binary executable to `/usr/local/bin/iactivate`.
3. Cleans up temporary installation files.
4. Launches the application.

---

## 💻 Running the Tool Afterwards

After installing once with `install.sh`, you do **NOT** need to run `install.sh` again. Simply open any terminal window anywhere in your system and type:

```bash
iactivate
```
or
```bash
I-ACTIVATE-12+
```

---

## ⚠️ Disclaimer
This tool is provided strictly for educational, security research, and authorized device recovery purposes.
