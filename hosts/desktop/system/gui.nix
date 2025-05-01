{ config, pkgs, ... }:

{
  imports = [
    ./desktop-environments/gnome/gnome.nix
    # ./desktop-environments/kde/kde.nix
  ]
}