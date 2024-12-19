{pkgs, ...}: {
    home.username = "your.username";
    home.homeDirectory = "/home/your.username";
    # home.stateVersion = "22.11"
    programs.home-manager.enable = true;
}
