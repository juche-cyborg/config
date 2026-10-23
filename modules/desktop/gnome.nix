{lib, config, pkgs, ...}:
{
  options = {
    imvegan.gnome.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "enable custom opionated gnome";
    };
  };
  config = lib.mkIf config.imvegan.gnome.enable {
    ##desktop environment
    services = {
      displayManager = {
        enable = true;
        gdm = {
          enable = true;
        };
      };
      desktopManager = {
        gnome.enable = true;
      };
    };
  
    ##remove unwanted packages
    services = {
      xserver.excludePackages = [pkgs.xterm];
      gnome.gnome-software.enable = false;
    };
    environment = {
      gnome.excludePackages = with pkgs; [
        epiphany
        simple-scan
        geary
        gnome-tour
      ];
  
      ##essential software ###FOR GNOME SPECIFICALLY
      systemPackages = with pkgs.gnomeExtensions; [
        ##define extensions
        blur-my-shell
        hide-top-bar
        appindicator
  
        ##apps
        pkgs.gnome-tweaks
      ];
    };
  };
}
