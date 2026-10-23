{ lib, config, pkgs, ... }:
{
  options = {
    imvegan.flatpak = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "configures & enables flatpak";
    };
  };

  config = lib.mkIf config.imvegan.flatpak {
    services.flatpak.enable = true;
    environment.systemPackages = [pkgs.bazaar]; ##gui store

    systemd.services.flatpak-repo = { 
      ##gives flatpak a repo to fill and update its store with.
      wantedBy = [ "multi-user.target" ];
      path = [ pkgs.flatpak ];
      script = ''
        flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
      '';
    };
  };
}
