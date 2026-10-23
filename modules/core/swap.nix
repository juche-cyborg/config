{ ... }:
{
  swapDevices = [{
    device = "/var/lib/swapfile";
    size = 10*1024; #10 GB
  }];

  zramSwap.enable = true;
}
