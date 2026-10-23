{
  imports = [
      ./home/default.nix
      ./hosts/imvegan.nix
    ];

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  system.stateVersion = "25.11"; # Did you read the comment?
}
