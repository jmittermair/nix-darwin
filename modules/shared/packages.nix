{ pkgs }:

with pkgs; [

  # Work-related tools

  # General packages for development and system management
  aspell
  aspellDicts.en
  bash-completion
  bat
  btop
  coreutils
  killall
  kitty
  mc
  neofetch
  neovim
  # openssh
  sqlite
  wget
  zip

  # Nix specific tools
  nix-index

  # Encryption and security tools
  age
  age-plugin-yubikey
  gnupg
  libfido2

  # Cloud-related tools and SDKs
  buildah
  skopeo
  podman
  podman-compose
  (pkgs.podman-desktop.overrideAttrs (finalAttrs: previousAttrs: {
    meta = {
      description = previousAttrs.description;
      homepage = previousAttrs.homepage;
      changelog = previousAttrs.changelog;
      license = previousAttrs.license;
      maintainers = previousAttrs.maintainers;
      inherit (electron-bin.meta) platforms;
      mainProgram = previousAttrs.mainProgram;
    };
  }))

  # Media-related packages
  dejavu_fonts
  ffmpeg
  fd
  font-awesome
  hack-font
  noto-fonts
  noto-fonts-emoji
  meslo-lgs-nf

  # Text and terminal utilities
  htop
  hunspell
  iftop
  jetbrains-mono
  jq
  jnv
  ripgrep
  tree
  tmux
  unrar
  unzip
  yq-go
  zsh-powerlevel10k
]
