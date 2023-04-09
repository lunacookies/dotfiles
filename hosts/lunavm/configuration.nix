{ config, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  networking.hostName = "lunavm";
  networking.networkmanager.enable = true;

  time.timeZone = "Australia/Sydney";

  i18n.defaultLocale = "en_AU.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_AU.UTF-8";
    LC_IDENTIFICATION = "en_AU.UTF-8";
    LC_MEASUREMENT = "en_AU.UTF-8";
    LC_MONETARY = "en_AU.UTF-8";
    LC_NAME = "en_AU.UTF-8";
    LC_NUMERIC = "en_AU.UTF-8";
    LC_PAPER = "en_AU.UTF-8";
    LC_TELEPHONE = "en_AU.UTF-8";
    LC_TIME = "en_AU.UTF-8";
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "au";
    xkbVariant = "";
  };

  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.displayManager.lightdm.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.luna = {
    isNormalUser = true;
    description = "Luna";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [ ];
  };

  environment.systemPackages = with pkgs; [
    git
    neovim
  ];

  services.openssh.enable = true;
  services.openssh.passwordAuthentication = false;
  networking.firewall.allowedTCPPorts = [ 22 ];

  nix.extraOptions = "experimental-features = nix-command flakes";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?

}
