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
      android-tools
      fastfetch
      file
      git
      nix-ld
      python314
      tectonic # LaTeX
      tldr
      usbutils
      uv # python packages
      vivify # markdown
      yafetch
    ];
  };
}
