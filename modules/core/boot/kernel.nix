{pkgs, ...}:
{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    #kernelPackages = pkgs.linuxKernel.packages.linux_zen;
    kernelModules = []; # explicit modules to load
  }; 
}

#TODO set configurable options to choose either latest or zen.
