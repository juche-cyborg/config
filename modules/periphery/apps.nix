# vim tip -
# use :sort for faster sorting
# example :set number
#         :8,24 sort
{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    authenticator    
    ayugram-desktop 
    cozy 
    #discord 
    foliate 
    fragments  
    freetube 
    gimp 
    kdePackages.kdenlive 
    komikku  
    libreoffice
    librewolf 
    mpv 
    newsflash 
    opencode  
    thunderbird 
    wordbook 
  ];
}
