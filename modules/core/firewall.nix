{lib, config, ...}:
{
  options = {
    imvegan.firewall.enable = lib.mkEnableOption "configure firewall";
  };

  config = lib.mkIf config.imvegan.firewall.enable {
    networking.firewall.allowedTCPPorts = [ ];
    networking.firewall.allowedUDPPorts = [ ];
  };
}
