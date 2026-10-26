{
  programs.dconf = {
    enable = true;
  };

#check your current settings with $dconf read
#example:
# dconf read /org/gnome/shell/enabled-extensions 

#dconf.settings needs the full path in one string minus the beginning slash, then options.

  home-manager.users.imvegan.dconf.settings = {

    #Theme
    "org/gnome/desktop/interface" = {
      accent-color = "teal";
      color-scheme = "prefer-dark";
    };

    "org/gnome/desktop/background" = {
      picture-uri =
        "file:///etc/nixos/home/wallpapers/frieren spell casting.nix.jpg";
      picture-uri-dark = 
        "file:///etc/nixos/home/wallpapers/frieren spell casting.dark.nix.jpg";
    };


    #keyboards
    "org/gnome/desktop/input-sources" = {}; #TODO get ready to learn chinese buddy

    "org/gnome/desktop/notifications" = {
      show-in-lock-screen = false;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    #empty trash
    "org/gnome/desktop/privacy" = {
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };

    "org/gnome/desktop/screensaver" = {
      lock-delay = 30;
      picture-uri =
        "file:///etc/nixos/home/wallpapers/frieren spell casting.dark.nix.jpg";
    };
    
    #720/60 = 12 minutes
    "org/gnome/desktop/session" = {
      idle-delay = 720;
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Shift><Super>c" ];
      panel-run-dialog = [ "<Super>r" ];
    };

    "org/gnome/GWeather4" = {
      temperature-unit = "centigrade";
    };

    "org/gnome/mutter" = {
      workspaces-only-on-primary = false; #enable workspaces on multiple monitors
    };

    "org/gnome/nautilus/icon-view" = {
      captions = [ #Grid View Captions
      #Add information to be displayed beneath file and folder names.
        "size"
        "none"
        "none"
      ];
    };

    "org/gnome/nautilus/preferences" = {
      click-policy = "single"; #single click files and dirs
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-schedule-automatic = false;
      night-light-schedule-from = 19.0; #24hr clock
      night-light-schedule-to = 7.0;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
      ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Alt>c";
      command = "kgx";
      name = "terminal";
    };
    
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>d";
      command = "wordbook";
      name = "Dictionary";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      # powerbutton prompts to shutdown
      # works well on laptops with powerbutton integrated into keyboard
      power-button-action = "nothing";
    };

    "org/gnome/shell" = {
      enabled-extensions = [
        "appindicatorsupport@rgcjonas.gmail.com"
        "blur-my-shell@aunetx"
        "hidetopbar@mathieu.bidon.ca"
       # "gsconnect@andyholmes.github.io"
      ];
      favorite-apps = [
        "librewolf.desktop"
        "freetube.desktop"
        "info.febvre.Komikku.desktop"
        "io.gitlab.news_flash.NewsFlash.desktop"
        "com.github.geigi.cozy.desktop"
        "org.gnome.Nautilus.desktop"
        "org.prismlauncher.PrismLauncher.desktop"
      ]; 
    };

    "org/gnome/shell/extensions/hidetopbar" = {
      hot-corner = true;
    };
  };
}
