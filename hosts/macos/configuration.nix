{pkgs, pkgs-unstable, ...}:
let
  defaultPkgs = import ../../common/packages;
in {
  services.nix-daemon.enable = true;
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';
  system.stateVersion = 4;

  programs.bash.enable = true;
  environment = {
    shells = with pkgs; [ bash zsh ];
    loginShell = pkgs.bash;
  };

  users.users.mateja.home = "/Users/mateja";
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.mateja.imports = [ ../../modules/home-manager ];
  };

  environment.systemPackages = with pkgs; [
    awscli
    coreutils
    gnupg
    iterm2
    k9s
    kubectl
    libreoffice-bin
    mariadb
    stripe-cli
  ] ++ (defaultPkgs pkgs pkgs-unstable);

  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };
}