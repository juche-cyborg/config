let
  home-manager = builtins.fetchTarball https://github.com/nix-community/home-manager/archive/release-26.05.tar.gz;
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];

  home-manager.users.imvegan = {
    home.stateVersion = "25.11";
  };
}
