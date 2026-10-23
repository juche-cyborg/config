{
  home-manager.users.imvegan = {
    accounts.email.accounts = {};
    programs.thunderbird = {
      enable = true;
      profiles.default = {
        isDefault = true;
        settings = {
          "mailnews.wraplength" = 0;
          "javascript.enabled" = false;
        };
      };
    };
  };
}
