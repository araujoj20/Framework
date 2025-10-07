let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-24.05.tar.gz") {};
  pythonEnv = pkgs.python3.withPackages (ps: with ps; [
    pip setuptools wheel numpy matplotlib jinja2 pyserial
  ]);
in pkgs.mkShell {
  name = "mcu-sc-framework";
  packages = [
    pythonEnv pkgs.jre_headless
    pkgs.jq
    pkgs.gcc-arm-embedded
    pkgs.openocd pkgs.stlink pkgs.dfu-util
    pkgs.cmake pkgs.ninja pkgs.gnumake pkgs.pkg-config pkgs.git pkgs.python3Packages.virtualenv
    pkgs.minicom pkgs.picocom pkgs.screen pkgs.usbutils pkgs.coreutils pkgs.gawk pkgs.gnugrep pkgs.findutils
    pkgs.unzip pkgs.zip pkgs.which pkgs.file pkgs.bash
    pkgs.code-server  #VS Code
  ];
  shellHook = ''
    echo "Loaded mcu-sc-framework shell.nix"
  '';
}