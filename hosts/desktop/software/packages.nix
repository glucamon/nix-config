{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs;
    [
      discord
      fastfetch
      eza
      git
      micro
      microcode-amd
      p7zip
    ];
}
