{ ... }:
{
  #turn off suspend for lid close
  services = {
    displayManager.gdm.autoSuspend = false;
    autosuspend.enable = false;
    logind.settings.Login = {
      HandleLidSwitchDocked = "ignore";
      HandleLidSwitchExternalPower = "ignore";
      HandleLidSwitch = "ignore";
      HandleHibernateKey = "ignore";
      HandleSuspendKey = "ignore";
      SuspendKeyIgnoreInhibited = "yes";
      HibernateKeyIgnoreInhibited = "yes";
    };
  };

  #Disable suspend because gnome overrides the above settings for the suspension key
  systemd = {
    targets = {
      sleep.enable = false;
      suspend.enable = false;
      hibernate.enable = false;
      hybrid-sleep.enable = false;
    };
  };

  #increases battery life
  #services.autocpu-freq.enable = true;
}
