{ config, pkgs, ... }:

{
  # minimal cosmic
  environment.systemPackages = with pkgs; [
    cosmic-bg
    cosmic-osd
    cosmic-comp
    cosmic-randr
    cosmic-panel
    cosmic-icons
    cosmic-session
    cosmic-applets
    cosmic-settings
    cosmic-launcher
    cosmic-protocols
    cosmic-screenshot
    cosmic-applibrary
    cosmic-notifications
    cosmic-settings-daemon
    cosmic-workspaces-epoch
    cosmic-greeter
    xdg-desktop-portal-cosmic
  ];

}

