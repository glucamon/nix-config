# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  # Bootloader
  boot = {
    loader = {
      systemd-boot = {
        enable = true;

        configurationLimit = 5;
      };

      efi = {
        canTouchEfiVariables = true;
      };
    };

    plymouth = {
      enable = true;

      theme = "spinner"; # Change to "rings" and uncomment the themePackages block to use the "rings" theme
      # themePackages = with pkgs; [
      #   # By default we would install all themes
      #   (adi1090x-plymouth-themes.override {
      #     selected_themes = [ "rings" ];
      #   })
      # ];
    };

    # Enable "Silent Boot"
    consoleLogLevel = 0;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "loglevel=3"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
    ];

    # Hide the OS choice for bootloaders.
    # It's still possible to open the bootloader list by pressing any key
    # It will just not appear on screen unless a key is pressed
    loader.timeout = 0;
  };
}