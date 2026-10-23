{ pkgs, ... }:
{
  services = {
    printing = {
      enable = true;
      drivers = with pkgs; [ # https://wiki.nixos.org/wiki/Printing
        cups-filters
        cups-browsed
        gutenprintBin
        hplipWithPlugin
        splix
      ];
    };
    avahi = { #detect printers with IPP Everywhere support
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
    ipp-usb.enable = true; #enable auto discovery of USB printers
  };
}
