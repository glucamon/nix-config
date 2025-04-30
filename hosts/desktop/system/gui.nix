{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true; # Enable the X11 windowing system

      # Enable the GNOME Desktop Environment
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;

      # libinput = {
      #   enable = false; # Enable touchpad support (enabled default in most desktopManager)
      # };
    };
  };
}