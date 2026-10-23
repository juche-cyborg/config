{pkgs, lib, config, ...}:
{
  options = {
    imvegan.tty = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "tty configuration";
    };
  };

  config = lib.mkIf config.imvegan.tty {
    console = {
      packages = [pkgs.terminus_font];
      font = "ter-132n";
    };
  };
}
