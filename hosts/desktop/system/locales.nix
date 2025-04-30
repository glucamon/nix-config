{ config, lib, pkgs, ... }:
let
  LANGUAGE = "it_IT.UTF-8"; # Italian locale
in
{
  time = {
    timeZone = "Europe/Oslo";
  };

  # Select internationalisation properties.
  i18n = {
    defaultLocale = "en_US.UTF-8";

    supportedLocales = [ "all" ]; # Support all locales

    extraLocaleSettings = {
      LC_ADDRESS = LANGUAGE;
      LC_IDENTIFICATION = LANGUAGE;
      LC_MEASUREMENT = LANGUAGE;
      LC_MONETARY = LANGUAGE;
      LC_NAME = LANGUAGE;
      LC_NUMERIC = LANGUAGE;
      LC_PAPER = LANGUAGE;
      LC_TELEPHONE = LANGUAGE;
      LC_TIME = LANGUAGE;
    };
  };

  console = {
    useXkbConfig = true; # use xkb.options in tty
    # font = "FiraCode";
  };

  services = {
    xserver = {
      xkb = {
        layout = "no";
        variant = ""; # Example: "variant = dvorak";
        # options = "eurosign:e,caps:escape";
      };
    };
  };

  environment.systemPackages = with pkgs; [ glibcLocales ];
}