{lib, config, pkgs, ...}:
{
  options = {
    imvegan.gaming = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "noob gaming setup on NixOS";
    };
  };

  config = lib.mkIf config.imvegan.gaming {
    environment.systemPackages = with pkgs; [
      lutris
      prismlauncher
      itch
    ];
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = false;
      dedicatedServer.openFirewall = false;
      localNetworkGameTransfers.openFirewall = false;
    };
  };
}
