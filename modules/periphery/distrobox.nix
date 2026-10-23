{pkgs, lib, config, ...}:
{
  options = {
    imvegan.distrobox = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "configures distrobox";
    };
  };

  config = lib.mkIf config.imvegan.distrobox {
    virtualisation.podman = {
      enable = true;
      dockerCompat = true;
    };
    environment.systemPackages = [pkgs.distrobox];
  };
}
