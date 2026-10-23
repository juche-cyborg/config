{
  boot.loader = {
    systemd-boot = {
      enable = true;
      editor = false; ##https://github.com/NixOS/nixpkgs/blob/c32c39d6f3b1fe6514598fa40ad2cf9ce22c3fb7/nixos/modules/system/boot/loader/systemd-boot/systemd-boot.nix#L66
    };
    efi.canTouchEfiVariables = true;
    timeout = 0; ##hides boot menu; press any key during boot to reveal generation list
  };
}
