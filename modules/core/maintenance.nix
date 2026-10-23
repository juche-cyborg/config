{ ... }:
{
  #Automatic Upgrades
  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
    dates = "*-*-01,03,05,07,09,11,13,15,17,19,21,23,25,27,29,31";
  };

  #Garbage collection
  nix = {
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-old";
    };
    #Storage Optimization
    optimise = {
      automatic = true;
      dates = [ "23:00" ];
    };
  };
}
