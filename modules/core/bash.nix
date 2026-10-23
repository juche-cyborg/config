{ ... }:
{
  programs.bash = {
    shellAliases = {
      nyaa = "sudo nixos-rebuild switch";
      ".." = "cd ..";
      "..."="cd ../..";
      "...."="cd ../../..";
      ".2"="cd ../..";
      ".3"="cd ../../..";
      ".4"="cd ../../../..";
      ".5"="cd ../../../../..";
      ".6"="cd ../../../../../..";
      edit="gnome-text-editor";
      ff="fastfetch";
    };
  };
}
