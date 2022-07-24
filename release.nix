{ ... }:
let
  pkgs = (import <nixpkgs> {
    #config.contentAddressedByDefault = true;
    #overlays = [ (import ./overlay.nix) ];
  });
in {
  #aflplusplus = pkgs.aflplusplus; # takes too long to build for doing often (LLVM)
  curl = pkgs.curl;
  file = pkgs.file;
  findutils = pkgs.findutils;
  glibc = pkgs.glibc;
  hello = pkgs.hello;
  jq = pkgs.jq;
  nix = pkgs.nix;
  #nomacs = pkgs.nomacs; # disabled since it takes very long to build this
  openalSoft = pkgs.openal;
  rtl_433 = pkgs.rtl_433;
  squeekboard = pkgs.squeekboard;
  which = pkgs.which;
  zlib = pkgs.zlib;

  # 'special' environments which aren't tested that often
  #staticSystemd = pkgs.pkgsStatic.systemd;
  # if I understand correctly this will 'cross-compile' to x86_64 (which is also the native platform).
  #nativeSystemdUsingCross = pkgs.pkgsCross.gnu64.systemd;
  #llvmSystemd = pkgs.pkgsLLVM.systemd;

  # cross packages
  crossA52Dec = pkgs.pkgsCross.aarch64-multiplatform.a52dec;
  crossAsciidoc = pkgs.pkgsCross.aarch64-multiplatform.asciidoc;
  crossAtk = pkgs.pkgsCross.aarch64-multiplatform.atk;
  crossAvahi = pkgs.pkgsCross.aarch64-multiplatform.avahi;
  crossBspwm = pkgs.pkgsCross.aarch64-multiplatform.bspwm;
  crossBusybox = pkgs.pkgsCross.aarch64-multiplatform.busybox;
  crossCalls = pkgs.pkgsCross.aarch64-multiplatform.calls;
  crossClangLatest = pkgs.pkgsCross.aarch64-multiplatform.llvmPackages_latest.clang;
  crossCurl = pkgs.pkgsCross.aarch64-multiplatform.curl;
  crossCurseofwar = pkgs.pkgsCross.aarch64-multiplatform.curseofwar;
  crossDbus = pkgs.pkgsCross.aarch64-multiplatform.dbus;
  crossDhcpcd = pkgs.pkgsCross.aarch64-multiplatform.dhcpcd;
  crossDmenu = pkgs.pkgsCross.aarch64-multiplatform.dmenu;
  crossDmenuWayland = pkgs.pkgsCross.aarch64-multiplatform.dmenu-wayland;
  crossDmidecode = pkgs.pkgsCross.aarch64-multiplatform.dmidecode;
  crossDnsmasq = pkgs.pkgsCross.aarch64-multiplatform.dnsmasq;
  crossDropbear = pkgs.pkgsCross.aarch64-multiplatform.dropbear;
  crossDwm = pkgs.pkgsCross.aarch64-multiplatform.dwm;
  crossEd = pkgs.pkgsCross.aarch64-multiplatform.ed;
  crossEglWayland = pkgs.pkgsCross.aarch64-multiplatform.egl-wayland;
  crossElinks = pkgs.pkgsCross.aarch64-multiplatform.elinks;
  crossFcft = pkgs.pkgsCross.aarch64-multiplatform.fcft;
  crossFeedbackd = pkgs.pkgsCross.aarch64-multiplatform.feedbackd;
  crossFfmpeg = pkgs.pkgsCross.aarch64-multiplatform.ffmpeg;
  crossFile = pkgs.pkgsCross.aarch64-multiplatform.file;
  crossFzf = pkgs.pkgsCross.aarch64-multiplatform.fzf;
  crossGdkPixbuf = pkgs.pkgsCross.aarch64-multiplatform.gdk-pixbuf;
  crossGeoclue = pkgs.pkgsCross.aarch64-multiplatform.geoclue2;
  crossGit = pkgs.pkgsCross.aarch64-multiplatform.git;
  crossGlew = pkgs.pkgsCross.aarch64-multiplatform.glew;
  crossGraphene = pkgs.pkgsCross.aarch64-multiplatform.graphene;
  crossGsettingsDesktopSchemas = pkgs.pkgsCross.aarch64-multiplatform.gsettings-desktop-schemas;
  crossGssdp = pkgs.pkgsCross.aarch64-multiplatform.gssdp;
  crossGstreamerBad = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gst-plugins-bad;
  crossGstreamerBase = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gst-plugins-base;
  crossGstreamerGood = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gst-plugins-good;
  crossGstreamerLibav = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gst-libav;
  crossGstreamer = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gstreamer;
  crossGstreamerUgly = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gst-plugins-ugly;
  crossGtk3 = pkgs.pkgsCross.aarch64-multiplatform.gtk3;
  crossGtk4 = pkgs.pkgsCross.aarch64-multiplatform.gtk4;
  crossGtkDoc = pkgs.pkgsCross.aarch64-multiplatform.gtk-doc;
  crossGupnpIgd = pkgs.pkgsCross.aarch64-multiplatform.gupnp-igd;
  crossGupnp = pkgs.pkgsCross.aarch64-multiplatform.gupnp;
  crossHamlib = pkgs.pkgsCross.aarch64-multiplatform.hamlib;
  crossHarfbuzz = pkgs.pkgsCross.aarch64-multiplatform.harfbuzz;
  crossHtop = pkgs.pkgsCross.aarch64-multiplatform.htop;
  crossImagemagick = pkgs.pkgsCross.aarch64-multiplatform.imagemagick;
  crossJq = pkgs.pkgsCross.aarch64-multiplatform.jq;
  crossLibaom = pkgs.pkgsCross.aarch64-multiplatform.libaom;
  crossLibass = pkgs.pkgsCross.aarch64-multiplatform.libass;
  crossLibgrss = pkgs.pkgsCross.aarch64-multiplatform.libgrss;
  crossLibnice = pkgs.pkgsCross.aarch64-multiplatform.libnice;
  crossLibrsvg = pkgs.pkgsCross.aarch64-multiplatform.librsvg;
  crossLibsoup = pkgs.pkgsCross.aarch64-multiplatform.libsoup;
  crossLibssh = pkgs.pkgsCross.aarch64-multiplatform.libssh;
  crossLibvpx = pkgs.pkgsCross.aarch64-multiplatform.libvpx;
  crossLibwacom = pkgs.pkgsCross.aarch64-multiplatform.libwacom;
  crossLibxklavier = pkgs.pkgsCross.aarch64-multiplatform.libxklavier;
  crossLightdm = pkgs.pkgsCross.aarch64-multiplatform.lightdm;
  crossLibhandy = pkgs.pkgsCross.aarch64-multiplatform.libhandy;
  crossLilv = pkgs.pkgsCross.aarch64-multiplatform.lilv;
  #crossLlvm12 = pkgs.pkgsCross.aarch64-multiplatform.llvm_12;
  #crossLlvm13 = pkgs.pkgsCross.aarch64-multiplatform.llvm_13;
  crossLlvmLatest = pkgs.pkgsCross.aarch64-multiplatform.llvmPackages_latest.llvm;
  crossLimesuite = pkgs.pkgsCross.aarch64-multiplatform.limesuite;
  crossLogrotate = pkgs.pkgsCross.aarch64-multiplatform.logrotate;
  #crossMegapixels = pkgs.pkgsCross.aarch64-multiplatform.megapixels; # disabled due to eval error (makeWrapper in wrong place for 'some dependency of zbar')
  crossMesa = pkgs.pkgsCross.aarch64-multiplatform.mesa;
  crossModemmanager = pkgs.pkgsCross.aarch64-multiplatform.modemmanager;
  crossMosquitto = pkgs.pkgsCross.aarch64-multiplatform.mosquitto;
  crossNano = pkgs.pkgsCross.aarch64-multiplatform.nano;
  crossNginx = pkgs.pkgsCross.aarch64-multiplatform.nginx;
  crossNix = pkgs.pkgsCross.aarch64-multiplatform.nix;
  crossNixUnstable = pkgs.pkgsCross.aarch64-multiplatform.nixUnstable;
  #crossNuspell = pkgs.pkgsCross.aarch64-multiplatform.nuspell;
  crossOpenalSoft = pkgs.pkgsCross.aarch64-multiplatform.openal;
  crossOpencv = pkgs.pkgsCross.aarch64-multiplatform.opencv;
  crossOpenexr = pkgs.pkgsCross.aarch64-multiplatform.openexr;
  crossOpenjpeg = pkgs.pkgsCross.aarch64-multiplatform.openjpeg;
  crossOpenssh = pkgs.pkgsCross.aarch64-multiplatform.openssh;
  crossPango = pkgs.pkgsCross.aarch64-multiplatform.pango;
  crossPatch = pkgs.pkgsCross.aarch64-multiplatform.patch;
  crossPcsclite = pkgs.pkgsCross.aarch64-multiplatform.pcsclite;
  crossPolkit = pkgs.pkgsCross.aarch64-multiplatform.polkit;
  crossPraat = pkgs.pkgsCross.aarch64-multiplatform.praat;  # gtk3 test case
  #crossRclone = pkgs.pkgsCross.aarch64-multiplatform.rclone; # go build times out
  crossRipgrep = pkgs.pkgsCross.aarch64-multiplatform.ripgrep;
  crossRsync = pkgs.pkgsCross.aarch64-multiplatform.rsync;
  crossRtl433 = pkgs.pkgsCross.aarch64-multiplatform.rtl_433;
  crossSharedMimeInfo = pkgs.pkgsCross.aarch64-multiplatform.shared-mime-info;
  crossSoapySdrWithPlugins = pkgs.pkgsCross.aarch64-multiplatform.soapysdr-with-plugins;
  crossSpandsp = pkgs.pkgsCross.aarch64-multiplatform.spandsp;
  crossSqueekboard = pkgs.pkgsCross.aarch64-multiplatform.squeekboard;
  crossSrtp = pkgs.pkgsCross.aarch64-multiplatform.srtp;
  crossStartupNotification = pkgs.pkgsCross.aarch64-multiplatform.libstartup_notification;
  crossSt = pkgs.pkgsCross.aarch64-multiplatform.st;
  crossSwaybg = pkgs.pkgsCross.aarch64-multiplatform.swaybg;
  crossSwayIdle = pkgs.pkgsCross.aarch64-multiplatform.swayidle;
  crossSwaykbdd = pkgs.pkgsCross.aarch64-multiplatform.swaykbdd;
  crossSwayLock = pkgs.pkgsCross.aarch64-multiplatform.swaylock;
  crossSway = pkgs.pkgsCross.aarch64-multiplatform.sway;
  crossTrackerMiners = pkgs.pkgsCross.aarch64-multiplatform.tracker-miners;
  crossTracker = pkgs.pkgsCross.aarch64-multiplatform.tracker;
  crossUdisks2 = pkgs.pkgsCross.aarch64-multiplatform.udisks2;
  crossUpower = pkgs.pkgsCross.aarch64-multiplatform.upower;
  crossValgrind = pkgs.pkgsCross.aarch64-multiplatform.valgrind;
  crossVim = pkgs.pkgsCross.aarch64-multiplatform.vim;
  crossWayland = pkgs.pkgsCross.aarch64-multiplatform.wayland;
  crossWlogout = pkgs.pkgsCross.aarch64-multiplatform.wlogout;
  crossWmctrl = pkgs.pkgsCross.aarch64-multiplatform.wmctrl;
  crossWofi = pkgs.pkgsCross.aarch64-multiplatform.wofi;  # depends on gtk3, testcase for linking against gtk3
  crossXorgServer = pkgs.pkgsCross.aarch64-multiplatform.xorg.xorgserver;
  crossXterm = pkgs.pkgsCross.aarch64-multiplatform.xterm;
  crossXwayland = pkgs.pkgsCross.aarch64-multiplatform.xwayland;
  crossZsh = pkgs.pkgsCross.aarch64-multiplatform.zsh;
}

