{ ... }:
let
  pkgs = (import <nixpkgs> {});
in {
  hello = pkgs.hello;
  rtl_433 = pkgs.rtl_433;
  jq = pkgs.jq;
  crossGtkDoc = pkgs.pkgsCross.aarch64-multiplatform.gtk-doc;
}

