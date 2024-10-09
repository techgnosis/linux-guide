{ config, lib, pkgs, ... }:

{
  imports =
    [ ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "genome";
    
  hardware.amdgpu.amdvlk.enable = true;
  
  services.pipewire = {
    enable = true;
  };

  
  users.users.james = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  environment.systemPackages = with pkgs; [
    micro
    git
    vulkan-tools
    vscodium
    firefox
    hyprland
    kitty
    fuzzel
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "DroidSansMono" ]; })
  ];

  #services.xserver.enable = true;
  #services.xserver.desktopManager.xfce.enable = true;
  #services.xserver.displayManager.lightdm.enable = true;
  programs.hyprland.enable = true;

  # DO NOT CHANGE UNDER ANY CIRCUMSTANCE
  system.stateVersion = "24.05"; # Did you read the comment?

}

