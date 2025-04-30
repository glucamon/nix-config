{ config, pkgs, ... }:

{
  programs = {
    firefox = {
      enable = true; # Install firefox
    };

    # Start Steam configuration
    gamescope = {
      enable = true;
      capSysNice = true;
    };

    steam = {
      enable = true;
      extest = {
        enable = true; # Translate X11 input events to Wayland
      };

      protontricks = {
        enable = true; # Run Proton games with custom settings
      };

      gamescopeSession = {
        enable = true; # Enable GameScope session
      };

      extraPackages = with pkgs; [
        gamescope
        # protontricks
        # steam
        # steam-run
        steamcontroller
        steamtinkerlaunch
      ];
    };

    gamemode = {
      enable = true;
    };

    appimage = {
      enable = true;
      binfmt = true;
    };
    # End Steam configuration

    # Start GPG configuration
    # Some programs need SUID wrappers, can be configured further or are started in user sessions.
    mtr = {
      enable = true;
    };

    gnupg = {
      agent = {
        enable = true;
        enableSSHSupport = true;
      };
    };
    # End GPG configuration
  };
}