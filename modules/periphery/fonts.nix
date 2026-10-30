{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    babelstone-han
    dina-font
    fira-code
    fira-code-symbols
    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only
    noto-fonts
    noto-fonts-cjk-sans
  ];
}
