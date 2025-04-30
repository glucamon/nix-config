{ config, lib, pkgs, VARS, ... }:

{
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
    };
  };
}