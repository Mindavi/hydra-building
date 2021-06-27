{ ... }:
let
  pkgs = (import <nixpkgs> { config.contentAddressedByDefault = true; });
in {
  hello = pkgs.hello;
  #aflplusplus = pkgs.aflplusplus; # takes too long to build for doing often (LLVM)
  rtl_433 = pkgs.rtl_433;
  jq = pkgs.jq;
  nix = pkgs.nix;
  #nomacs = pkgs.nomacs; # disabled since it takes very long to build this

  # cross packages
  crossA52Dec = pkgs.pkgsCross.aarch64-multiplatform.a52dec;
  crossAsciidoc = pkgs.pkgsCross.aarch64-multiplatform.asciidoc;
  crossAtk = pkgs.pkgsCross.aarch64-multiplatform.atk;
  crossBspwm = pkgs.pkgsCross.aarch64-multiplatform.bspwm;
  crossBusybox = pkgs.pkgsCross.aarch64-multiplatform.busybox;
  crossCurseofwar = pkgs.pkgsCross.aarch64-multiplatform.curseofwar;
  crossDnsmasq = pkgs.pkgsCross.aarch64-multiplatform.dnsmasq;
  crossDropbear = pkgs.pkgsCross.aarch64-multiplatform.dropbear;
  crossDwm = pkgs.pkgsCross.aarch64-multiplatform.dwm;
  crossEd = pkgs.pkgsCross.aarch64-multiplatform.ed;
  crossEglWayland = pkgs.pkgsCross.aarch64-multiplatform.egl-wayland;
  crossElinks = pkgs.pkgsCross.aarch64-multiplatform.elinks;
  crossDhcpcd = pkgs.pkgsCross.aarch64-multiplatform.dhcpcd;
  crossDmenuWayland = pkgs.pkgsCross.aarch64-multiplatform.dmenu-wayland;
  crossFcft = pkgs.pkgsCross.aarch64-multiplatform.fcft;
  crossFile = pkgs.pkgsCross.aarch64-multiplatform.file;
  crossFfmpeg = pkgs.pkgsCross.aarch64-multiplatform.ffmpeg;
  crossFzf = pkgs.pkgsCross.aarch64-multiplatform.fzf;
  crossGdkPixbuf = pkgs.pkgsCross.aarch64-multiplatform.gdk-pixbuf;
  crossGit = pkgs.pkgsCross.aarch64-multiplatform.git;
  crossGsettingsDesktopSchemas = pkgs.pkgsCross.aarch64-multiplatform.gsettings-desktop-schemas;
  crossGstreamer = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gstreamer;
  crossGtkDoc = pkgs.pkgsCross.aarch64-multiplatform.gtk-doc;
  crossGtk3 = pkgs.pkgsCross.aarch64-multiplatform.gtk3;
  crossGtk4 = pkgs.pkgsCross.aarch64-multiplatform.gtk4;
  crossHarfbuzz = pkgs.pkgsCross.aarch64-multiplatform.harfbuzz;
  crossHtop = pkgs.pkgsCross.aarch64-multiplatform.htop;
  crossJq = pkgs.pkgsCross.aarch64-multiplatform.jq;
  crossLibass = pkgs.pkgsCross.aarch64-multiplatform.libass;
  crossLibrsvg = pkgs.pkgsCross.aarch64-multiplatform.librsvg;
  crossLibsoup = pkgs.pkgsCross.aarch64-multiplatform.libsoup;
  crossLibssh = pkgs.pkgsCross.aarch64-multiplatform.libssh;
  crossLibwacom = pkgs.pkgsCross.aarch64-multiplatform.libwacom;
  crossLlvm11 = pkgs.pkgsCross.aarch64-multiplatform.llvm_11;
  crossLlvm12 = pkgs.pkgsCross.aarch64-multiplatform.llvm_12;
  crossLlvmLatest = pkgs.pkgsCross.aarch64-multiplatform.llvmPackages_latest.llvm;
  crossMesa = pkgs.pkgsCross.aarch64-multiplatform.mesa;
  crossMosquitto = pkgs.pkgsCross.aarch64-multiplatform.mosquitto;
  crossNano = pkgs.pkgsCross.aarch64-multiplatform.nano;
  crossNginx = pkgs.pkgsCross.aarch64-multiplatform.nginx;
  crossNix = pkgs.pkgsCross.aarch64-multiplatform.nix;
  crossNixUnstable = pkgs.pkgsCross.aarch64-multiplatform.nixUnstable;
  crossOpenexr = pkgs.pkgsCross.aarch64-multiplatform.openexr;
  crossOpenjpeg = pkgs.pkgsCross.aarch64-multiplatform.openjpeg;
  crossOpenssh = pkgs.pkgsCross.aarch64-multiplatform.openssh;
  crossPango = pkgs.pkgsCross.aarch64-multiplatform.pango;
  crossPatch = pkgs.pkgsCross.aarch64-multiplatform.patch;
  #crossRclone = pkgs.pkgsCross.aarch64-multiplatform.rclone; # go build times out
  crossRipgrep = pkgs.pkgsCross.aarch64-multiplatform.ripgrep;
  crossRsync = pkgs.pkgsCross.aarch64-multiplatform.rsync;
  crossRtl433 = pkgs.pkgsCross.aarch64-multiplatform.rtl_433;
  crossSharedMimeInfo = pkgs.pkgsCross.aarch64-multiplatform.shared-mime-info;
  crossStartupNotification = pkgs.pkgsCross.aarch64-multiplatform.libstartup_notification;
  crossSt = pkgs.pkgsCross.aarch64-multiplatform.st;
  crossSway= pkgs.pkgsCross.aarch64-multiplatform.sway;
  crossSwaykbdd = pkgs.pkgsCross.aarch64-multiplatform.swaykbdd;
  crossVim = pkgs.pkgsCross.aarch64-multiplatform.vim;
  crossXterm = pkgs.pkgsCross.aarch64-multiplatform.xterm;
  crossXwayland = pkgs.pkgsCross.aarch64-multiplatform.xwayland;
  crossWlogout = pkgs.pkgsCross.aarch64-multiplatform.wlogout;
  crossWmctrl = pkgs.pkgsCross.aarch64-multiplatform.wmctrl;
  crossZsh = pkgs.pkgsCross.aarch64-multiplatform.zsh;
}

