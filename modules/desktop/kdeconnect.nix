{lib, config, pkgs, ...}:
{
  options = {
    imvegan.kdeconnect = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "enable kde connect with gnome";
    };
  };

  config = lib.mkIf config.imvegan.kdeconnect {
    programs.kdeconnect = {
      enable = true;
      package = pkgs.gnomeExtensions.gsconnect;
    };
  };
}
