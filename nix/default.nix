with import <nixpkgs> {};
let
  /*** vim ***/
  my_vim = import ./vim/default.nix { 
    pkgs = pkgs; 
    vim_configurable = vim_configurable;
  };
in
with pkgs; rec{
  fishi = buildEnv {
    name = "fishi";
    paths = [ 
      nix-repl 
      nix-serve 
      nix-index
      telnet 
      python3.6
      python36Packages.pip
      python36Packages.virtualenv
      htop 
      git
      gnumake
      tree 
      tmux
      wget
      awscli
      openjdk
      irssi
      iftop
      idea.idea-ultimate
      idea.goland
      idea.pycharm-professional
      nload
      go
      docker_compose
      slack
      keepassx2
      #libreoffice
      dbeaver
      maven
      wireshark
      spotify
      #calibre
      my_vim.pkg
    ]; 
  };
}
