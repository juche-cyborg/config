{lib, config, pkgs, ...}:
{
  options = {
    imvegan.vim.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "enables vim";
    };
  };

  config = lib.mkIf config.imvegan.vim.enable {
    programs.vim = {
      enable = true;
      defaultEditor = true;
    };
    environment.variables = {
      EDITOR = "vim";
      VISUAL = ""; ##no idea what this is for
    };
  };
}
