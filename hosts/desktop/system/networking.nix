{ config, pkgs, ... }:

{
  networking = {
    hostName = "kaizer";

    networkmanager = {
      enable = true;
    };

    wireless = {
      enable = false;
    };

    proxy = {
      # default = "http://user:password@proxy:port/";
      # noProxy = "127.0.0.1,localhost,internal.domain";
    };

    firewall = {
      enable = true;

      # allowedTCPPorts = [ ... ];
      # allowedUDPPorts = [ ... ];
    };
  };
}