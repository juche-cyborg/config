{ pkgs, ... }:
{
  home-manager.users.imvegan = {
    home = {
      sessionVariables.EDITOR = "vim";
    };
    programs = {
      vim = {
        enable = true;
        plugins = with pkgs.vimPlugins; [ ];
        settings = { };
        extraConfig = ''
          set autoindent
        '';
        defaultEditor = true;
      };
    };
  };
}
