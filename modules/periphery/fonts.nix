{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    fira-code
    fira-code-symbols
    dina-font
    babelstone-han
    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only
  ];
}
