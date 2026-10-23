{
  home-manager.users.imvegan = {
    programs.git = {
      enable = true;
      settings = {
        user = {
          name = "Juche Cyborg";
          email = "resurrectionofmao+github@proton.me";
        };
        init.defaultBranch = "main";
        safe.directory = "/etc/nixos";
      };
    };
  };
}
