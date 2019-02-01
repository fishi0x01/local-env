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
      nix
      nix-serve 
      nox
      pass
      telnet 
      python3.7
      htop 
      git
      gnumake
      cmake
      tree 
      tmux
      wget
      awscli
      irssi
      lynx
      chromium
      ssh-ident
      iftop
      vscode
      idea.idea-community
      idea.idea-ultimate
      idea.goland
      idea.pycharm-professional
      nload
      go
      docker_compose
      slack
      keepassx2
      libreoffice
      gimp
      pwgen
      dbeaver
      maven
      wireshark
      spotify
      openjdk
      skypeforlinux
      dotnet-sdk
      #anki
      texlive.combined.scheme-full
      irssi
      dia
      valgrind
      gdb
      ant
      xclip
      powershell
      scummvm
      p7zip
      cmus
      ruby
      thunderbird
      simplescreenrecorder
      libsForQt511.vlc
      #calibre
      my_vim.pkg
    ]; 
  };
}