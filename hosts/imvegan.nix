{...}:
{
  imports = [
    ./../modules/default.nix
    ./hardware-configuration.nix
  ];
  networking.hostName = "btw";

  users.users.imvegan = {
    isNormalUser = true;
    description = "I'm Vegan";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  imvegan = {
  };
}
