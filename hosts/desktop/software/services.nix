{ config, pkgs, ... }:

{
  services = {
    openssh = {
      enable = true; # Enable the OpenSSH daemon
    };

    tailscale = {
      enable = true;

      openFirewall = true;
    };
  };
}