{lib, config, pkgs, ...}:
{
  options = {
    imvegan.utils = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "useful programs";
    };
  };

  config = lib.mkIf config.imvegan.utils {
    environment.systemPackages = with pkgs; [
      file
      fastfetch
      git
      yafetch
      python314
      uv
      nix-ld
      android-tools
      usbutils
      tldr
      vivify
      tectonic
    ];
  };
}
