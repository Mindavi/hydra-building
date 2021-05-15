{ ... }:
let
  pkgs = (import <nixpkgs> {});
in {
  #pkgs.config.contentAddressedByDefault = true;

  hello = pkgs.hello;
  aflplusplus = pkgs.aflplusplus;
  rtl_433 = pkgs.rtl_433;
  jq = pkgs.jq;
  #nomacs = pkgs.nomacs; # disabled since it takes very long to build this

  # cross packages
  crossBspwm = pkgs.pkgsCross.aarch64-multiplatform.bspwm;
  crossCurseofwar = pkgs.pkgsCross.aarch64-multiplatform.curseofwar;
  crossEd = pkgs.pkgsCross.aarch64-multiplatform.ed;
  crossDhcpcd = pkgs.pkgsCross.aarch64-multiplatform.dhcpcd;
  crossGtkDoc = pkgs.pkgsCross.aarch64-multiplatform.gtk-doc;
  crossHtop = pkgs.pkgsCross.aarch64-multiplatform.htop;
  crossMosquitto = pkgs.pkgsCross.aarch64-multiplatform.mosquitto;
  crossNano = pkgs.pkgsCross.aarch64-multiplatform.nano;
  crossNginx = pkgs.pkgsCross.aarch64-multiplatform.nginx;
  crossOpenssh = pkgs.pkgsCross.aarch64-multiplatform.openssh;
  #crossRclone = pkgs.pkgsCross.aarch64-multiplatform.rclone; # go build times out
  crossRipgrep = pkgs.pkgsCross.aarch64-multiplatform.ripgrep;
  crossRsync = pkgs.pkgsCross.aarch64-multiplatform.rsync;
  crossRtl433 = pkgs.pkgsCross.aarch64-multiplatform.rtl_433;
  crossSwaykbdd = pkgs.pkgsCross.aarch64-multiplatform.swaykbdd;
  crossVim = pkgs.pkgsCross.aarch64-multiplatform.vim;
}

