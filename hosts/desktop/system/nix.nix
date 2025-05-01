{ config, lib, pkgs, VARS, ... }:

{
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ]; # Enable Nix command and flakes
      auto-optimise-store = true; # Automatically optimise the Nix store
      download-buffer-size = 536870912; # 512MB download buffer size
    };

    gc = {
      automatic = lib.mkDefault true; # Enable automatic garbage collection
      dates = lib.mkDefault "weekly"; # Run garbage collection weekly
      options = lib.mkDefault "--delete-older-than 7d"; # Delete generations older than 7 days
    };

    optimise = {
      automatic = true;
      dates = [ "02:00" ]; # Run at 2:00 AM
    };
  };
}