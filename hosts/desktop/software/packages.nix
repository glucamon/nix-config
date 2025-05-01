{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    ## Shells and shell enhancements
    bash
    bash-completion
    zsh
    zsh-autocomplete
    bat
    eza

    ## Core utilities
    coreutils-full
    util-linux

    ## Networking tools
    curl
    nettools
    wget

    ## System monitoring and management
    lm_sensors
    linuxHeaders
    rng-tools
    rsync
    tree
    btop

    ## Multimedia tools
    ffmpeg

    ## Text editing
    micro
    xclip

    ## Dev tools
    automake
    clang
    cmake
    autoconf
    git

    ## Misc tools and utilities
    p7zip
    microcode-amd
    usbutils # USB device related utilities
    udiskie # Removable disk automounter
    udisks # Disk management service
    apparmor-bin-utils
    apparmor-kernel-patches
    apparmor-pam
    apparmor-parser
    apparmor-profiles
    apparmor-utils
    libapparmor
    polkit
    tpm2-tools
  ];

  fonts.packages = with pkgs; [
    google-fonts # Collection of Google Fonts
    ibm-plex # IBM Plex font family
    meslo-lgs-nf # Meslo Nerd Font patched for Powerlevel10k
    nerd-fonts.ubuntu
    nerd-fonts.inconsolata
    nerd-fonts.mononoki
    nerd-fonts.fira-code
    nerd-fonts.tinos
    noto-fonts
    noto-fonts-color-emoji
  ];
}
