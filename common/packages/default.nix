pkgs: pkgs-unstable: with pkgs; [
  (pass.withExtensions (exts: [ exts.pass-otp ]))
  buf
  cmake
  elmPackages.elm
  ffmpeg
  fswatch
  gh
  gimp
  git
  git-filter-repo
  gnumake
  grpcurl
  haskell-language-server
  htop
  httpie
  jq
  lf
  mpv
  neovim
  nodejs_21
  pkgs-unstable.go
  protobuf
  protoc-gen-go
  protoc-gen-go-grpc
  rustc
  tmux
  transmission-gtk
  tree
  unzip
  wget
  yt-dlp
  zip
]
