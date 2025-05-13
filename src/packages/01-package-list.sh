#!/bin/bash
set -euo pipefail

echo "::group:: ===$(basename "$0")==="

# Базовые утилиты и инструменты
BASIC_PACKAGES=(
  htop
  fastfetch
  nvtop
  notify-send
  zsh
  zsh-completions
  starship
  bash-completion
  inxi
  openssh-server
  iucode_tool
  systemd-ssh-agent
)

# Генератор ZRAM
ZRAM_PACKAGES=(
  zram-generator
)



# GNOME — приложения и утилиты

# GNOME — темы, шрифты и оформление


# Nautilus (файловый менеджер) и связанные пакеты


# Прочие приложения
MISC_APPS=(
  virt-manager
  firefox
  papers
  power-profiles-daemon
)

# Xorg-драйверы для различных GPU и устройств
DRIVERS=(
  xorg-drv-libinput
  xorg-drv-qxl
  xorg-drv-spiceqxl
  xorg-drv-intel
  xorg-drv-amdgpu
  xorg-drv-vmware
  xorg-drv-nouveau
)

# Wayland/Qt/Vulkan утилиты
WAYLAND_QT=(
  qt5-wayland
  qt6-wayland
  wayland-utils
  vulkan-tools
)

# Аудиоподсистема (PipeWire)
AUDIO_PACKAGES=(
  pipewire
  wireplumber
)

# Сеть и печать (Avahi, CUPS, fwupd, etc.)
NETWORK_PRINT_PACKAGES=(
  avahi-daemon
  cups-browsed
  fwupd
  libnss-mdns
  wsdd
)

HYPRLAND_PACKAGES=(
  hyprland
  waybar
  kitty
  rofi
  mako
  xdg-desktop-portal-hyprland
  thunar
)



apt-get install -y \
  "${BASIC_PACKAGES[@]}" \
  "${ZRAM_PACKAGES[@]}" \
  "${MISC_APPS[@]}" \
  "${DRIVERS[@]}" \
  "${WAYLAND_QT[@]}" \
  "${AUDIO_PACKAGES[@]}" \
  "${NETWORK_PRINT_PACKAGES[@]}" \
  "${HYPRLAND_PACKAGES[@]}"

echo "::endgroup::"
