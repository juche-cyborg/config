{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    librewolf 
    wordbook 
    foliate 
    freetube 
    fragments  
    newsflash 
    komikku  
    thunderbird 
    libreoffice
    gimp 
    mpv 
    ayugram-desktop 
    cozy 
    authenticator    
    opencode  
    kdePackages.kdenlive 
    #discord 
  ];
}
