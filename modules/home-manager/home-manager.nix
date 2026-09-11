{ inputs, ... }:
{
  flake.nixosModules.home-manager =
    { pkgs, ... }:
    {
      imports = [
        inputs.home-manager.nixosModules.home-manager
      ];
      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        users.cephyr = {
          home.stateVersion = "26.05";
          gtk = {
            enable = true;
            colorScheme = "dark";
            theme = {
              name = "catppuccin-frappe-blue-standard";
              package = pkgs.catppuccin-gtk;
            };
          };
          qt = {
            enable = true;
            platformTheme.name = "qtct";
            style.name = "Fusion";
          };
          xdg.userDirs = {
            enable = true;
            createDirectories = true;
            desktop = "$HOME/desktop";
            documents = "$HOME/documents";
            download = "$HOME/downloads";
            music = "$HOME/music";
            pictures = "$HOME/pictures";
            projects = "$HOME/projects";
            publicShare = "$HOME/public";
            templates = "$HOME/templates";
            videos = "$HOME/videos";
          };
        };
      };
    };
}
