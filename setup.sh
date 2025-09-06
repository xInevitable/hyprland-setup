#!/bin/bash
# Sorcereric's Universal Hyprland Setup Script


#  .::::::.     ...    :::::::..     .,-::::: .,:::::: :::::::..  .,:::::: :::::::..   :::  .,-:::::  
# ;;;`    `  .;;;;;;;. ;;;;``;;;;  ,;;;'````' ;;;;'''' ;;;;``;;;; ;;;;'''' ;;;;``;;;;  ;;;,;;;'````'  
# '[==/[[[[,,[[     \[[,[[[,/[[['  [[[         [[cccc   [[[,/[[['  [[cccc   [[[,/[[['  [[[[[[         
#   '''    $$$$,     $$$$$$$$$c    $$$         $$""""   $$$$$$c    $$""""   $$$$$$c    $$$$$$         
# 88b    dP"888,_ _,88P888b "88bo,`88bo,__,o, 888oo,__ 888b "88bo,888oo,__ 888b "88bo,888`88bo,__,o, 
# "YMmMY"   "YMMMMMP" MMMM   "W"   "YUMMMMMP"""""YUMMMMMMM   "W" """"YUMMMMMMM   "W" MMM  "YUMMMMMP"


# TTY-Compatible, Official Repos Only, Fully Automatic

# -----------------------------
# CONFIG
# -----------------------------
GITHUB_REPO="https://github.com/sorcereric/hyprland-setup"
LOCAL_CONFIG="$HOME/.config/hypr"
BACKUP_DIR="$HOME/.config/hypr-backup-$(date +%Y%m%d%H%M%S)"

APPS=(hyprland hyprpaper wofi rofi waybar mako nm-applet pavucontrol network-manager-applet \
htop neofetch fastfetch git vim nano curl wget zsh pulseaudio pipewire bluez blueman picom \
mpv firefox dolphin light brightnessctl kitty)

# -----------------------------
# FUNCTIONS
# -----------------------------

install_apps_pacman() {
    pacman -Syu --noconfirm --needed "${APPS[@]}"
}

install_apps_dnf() {
    dnf install -y "${APPS[@]}"
}

install_apps_zypper() {
    zypper install -y "${APPS[@]}"
}

backup_config() {
    mkdir -p "$BACKUP_DIR"
    cp -r "$LOCAL_CONFIG"/* "$BACKUP_DIR"/ 2>/dev/null || true
}

download_config() {
    mkdir -p "$LOCAL_CONFIG"
    curl -fsSL "https://github.com/sorcereric/hyprland-setup/raw/main/hyprland.conf" -o "$LOCAL_CONFIG/hyprland.conf"
    curl -fsSL "https://github.com/sorcereric/hyprland-setup/raw/main/keybinds.conf" -o "$LOCAL_CONFIG/keybinds.conf"
}

reload_hyprland() {
    # Only attempt reload if hyprctl is available
    command -v hyprctl &> /dev/null && hyprctl reload
}

# -----------------------------
# EXECUTION
# -----------------------------
echo "Starting Hyprland setup..."

# Detect package manager silently
if command -v pacman &> /dev/null; then
    install_apps_pacman
elif command -v dnf &> /dev/null; then
    install_apps_dnf
elif command -v zypper &> /dev/null; then
    install_apps_zypper
else
    echo "Unsupported system. Please install packages manually: ${APPS[*]}"
    exit 1
fi

backup_config
download_config
reload_hyprland

echo "Setup complete!"
echo "You can run Hyprland from a TTY or GUI terminal."
echo "Use Ctrl+Alt+F2–F6 to access TTYs if needed."
