{lib, config, pkgs, ... }:
{
  options = {
    imvegan.plymouth = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "plymouth, fancy boot screen";
    };
  };

  config = lib.mkIf config.imvegan.plymouth {
    
    boot.plymouth.enable = true;

# https://github.com/NixOS/nixpkgs/blob/nixos-26.05/pkgs/by-name/ca/catppuccin-plymouth/package.nix
    boot.plymouth = {
      theme = "catppuccin-mocha";
      themePackages = with pkgs; [(
        catppuccin-plymouth.override {
          variant = "mocha"; 
        })
      ];
    };

    boot = {
      consoleLogLevel = 0;
      initrd.verbose = false;
      kernelParams = [
        "quiet"
        "splash"
        "plymouth.use-simpledrm"
      ];
    };
  };
}
