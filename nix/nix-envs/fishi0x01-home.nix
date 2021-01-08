with import <nixpkgs> {};
let
  /*** vim ***/
  my_vim = import ./vim/default.nix { 
    pkgs = pkgs; 
    ### python3 support
    vim_configurable = vim_configurable.override { python = pkgs.python3; };
  };
in
with pkgs; rec{
  fishi = buildEnv {
    name = "fishi";
    paths = [ 
      ack
      act
      ant
      asciinema
      ansible-lint
      awscli
      #aws-sam-cli
      bat
      black
      chafa
      clang-tools
      cmake
      cmatrix
      cmus
      colordiff
      crunch
      dbeaver
      dia
      diesel-cli
      diskonaut
      dmg2img
      docker_compose
      dos2unix
      dosbox
      dotnet-sdk
      fd
      ffmpeg
      figlet
      gdb
      ghidra-bin
      gimp
      git
      gitAndTools.gh
      git-crypt
      git-lfs
      git-secrets
      gitAndTools.delta
      glibcLocales
      gnumake
      googler
      go-jira
      gotop
      graphviz
      hadolint
      hexyl
      hey
      htop 
      idea.idea-community
      iftop
      imagemagick
      inkscape
      irssi
      jq
      kazam
      keepassx2
      kicad
      libreoffice
      liferea
      lolcat
      lynx
      maven
      manix
      mc
      mdl
      mkvtoolnix
      most
      mplayer
      my_vim.pkg
      nix
      nix-serve 
      nload
      nms
      nodePackages.jshint
      nodePackages.jsonlint
      nox
      openjdk
      p7zip
      packer
      pandoc
      pass
      peco
      podman
      potrace
      powershell
      pwgen
      python27Packages.virtualenv
      python38Packages.flake8
      python38Packages.flake8-import-order
      python38Packages.pylint
      python38Packages.sqlmap
      rdesktop
      reptyr
      restic
      ripgrep
      rustfmt
      sampler
      scrot
      scummvm
      simplescreenrecorder
      skypeforlinux
      slack
      smbclient
      socat
      spotify
      spotify-tui
      ssh-ident
      sshpass
      starship
      telnet 
      #texlive.combined.scheme-full
      tflint
      thefuck
      tmux
      todo-txt-cli
      todoist
      tree 
      unrar
      #vagrant
      valgrind
      vscode
      wget
      xclip
      yamllint
      yarn
      yq
    ]; 
  };
}
