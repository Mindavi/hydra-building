{ ... }:
let
  pkgs = (import <nixpkgs> {
    #config.contentAddressedByDefault = true;
    #overlays = [ (import ./overlay.nix) ];
  });
  pkgsCa = (import <nixpkgs> {
    config.contentAddressedByDefault = true;
    #overlays = [ (import ./overlay.nix) ];
  });
in {
  #aflplusplus = pkgs.aflplusplus; # takes too long to build for doing often (LLVM)
  curl = pkgs.curl;
  curlFullyContentAddressed = pkgsCa.curl;
  file = pkgs.file;
  findutils = pkgs.findutils;
  glibc = pkgs.glibc;
  glibcContentAddressed = (pkgs.glibc.overrideAttrs (oldAttrs: { __contentAddressed = true; }));
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
  nativeSystemdUsingCross = pkgs.pkgsCross.gnu64.systemd;
  #llvmSystemd = pkgs.pkgsLLVM.systemd;

  # cross packages
  crossA52Dec = pkgs.pkgsCross.aarch64-multiplatform.a52dec;
  crossAccountsservice = pkgs.pkgsCross.aarch64-multiplatform.accountsservice;
  crossAsciidoc = pkgs.pkgsCross.aarch64-multiplatform.asciidoc;
  crossAtk = pkgs.pkgsCross.aarch64-multiplatform.atk;
  crossAvahi = pkgs.pkgsCross.aarch64-multiplatform.avahi;
  crossBoost = pkgs.pkgsCross.aarch64-multiplatform.boost;
  #crossBoost183 = pkgs.pkgsCross.aarch64-multiplatform.boost183; # Not available in older nixpkgs-release-xxx channels
  crossBspwm = pkgs.pkgsCross.aarch64-multiplatform.bspwm;
  crossBusybox = pkgs.pkgsCross.aarch64-multiplatform.busybox;
  crossCalls = pkgs.pkgsCross.aarch64-multiplatform.calls;
  crossClangLatest = pkgs.pkgsCross.aarch64-multiplatform.llvmPackages_latest.clang;
  crossCups = pkgs.pkgsCross.aarch64-multiplatform.cups;
  crossCurl = pkgs.pkgsCross.aarch64-multiplatform.curl;
  crossCurseofwar = pkgs.pkgsCross.aarch64-multiplatform.curseofwar;
  crossDbus = pkgs.pkgsCross.aarch64-multiplatform.dbus;
  crossDhcpcd = pkgs.pkgsCross.aarch64-multiplatform.dhcpcd;
  crossDmenu = pkgs.pkgsCross.aarch64-multiplatform.dmenu;
  crossDmenuWayland = pkgs.pkgsCross.aarch64-multiplatform.dmenu-wayland;
  crossDmidecode = pkgs.pkgsCross.aarch64-multiplatform.dmidecode;
  crossDnsmasq = pkgs.pkgsCross.aarch64-multiplatform.dnsmasq;
  crossDnsmasqContentAddressed = (pkgs.pkgsCross.aarch64-multiplatform.dnsmasq.overrideAttrs (oldAttrs: { __contentAddressed = true; }));
  crossDropbear = pkgs.pkgsCross.aarch64-multiplatform.dropbear;
  crossDwm = pkgs.pkgsCross.aarch64-multiplatform.dwm;
  crossEd = pkgs.pkgsCross.aarch64-multiplatform.ed;
  crossEglWayland = pkgs.pkgsCross.aarch64-multiplatform.egl-wayland;
  crossElinks = pkgs.pkgsCross.aarch64-multiplatform.elinks;
  crossFcft = pkgs.pkgsCross.aarch64-multiplatform.fcft;
  crossFeedbackd = pkgs.pkgsCross.aarch64-multiplatform.feedbackd;
  crossFfmpeg = pkgs.pkgsCross.aarch64-multiplatform.ffmpeg;
  crossFfmpegFull = pkgs.pkgsCross.aarch64-multiplatform.ffmpeg-full;
  crossFile = pkgs.pkgsCross.aarch64-multiplatform.file;
  crossFzf = pkgs.pkgsCross.aarch64-multiplatform.fzf;
  crossGdkPixbuf = pkgs.pkgsCross.aarch64-multiplatform.gdk-pixbuf;
  crossGeoclue = pkgs.pkgsCross.aarch64-multiplatform.geoclue2;
  crossGit = pkgs.pkgsCross.aarch64-multiplatform.git;
  crossGlew = pkgs.pkgsCross.aarch64-multiplatform.glew;
  crossGnomeDesktop = pkgs.pkgsCross.aarch64-multiplatform.gnome-desktop;
  crossGnomeTextEditor = pkgs.pkgsCross.aarch64-multiplatform.gnome-text-editor;
  crossGraphene = pkgs.pkgsCross.aarch64-multiplatform.graphene;
  crossGraphviz = pkgs.pkgsCross.aarch64-multiplatform.graphviz;
  crossGsettingsDesktopSchemas = pkgs.pkgsCross.aarch64-multiplatform.gsettings-desktop-schemas;
  crossGssdp = pkgs.pkgsCross.aarch64-multiplatform.gssdp;
  crossGstreamerBad = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gst-plugins-bad;
  crossGstreamerBase = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gst-plugins-base;
  crossGstreamerGood = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gst-plugins-good;
  crossGstreamerLibav = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gst-libav;
  crossGstreamer = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gstreamer;
  crossGstreamerUgly = pkgs.pkgsCross.aarch64-multiplatform.gst_all_1.gst-plugins-ugly;
  crossGtk2 = pkgs.pkgsCross.aarch64-multiplatform.gtk2;
  crossGtk3 = pkgs.pkgsCross.aarch64-multiplatform.gtk3;
  crossGtk4 = pkgs.pkgsCross.aarch64-multiplatform.gtk4;
  crossGtkDoc = pkgs.pkgsCross.aarch64-multiplatform.gtk-doc;
  crossGupnpIgd = pkgs.pkgsCross.aarch64-multiplatform.gupnp-igd;
  crossGupnp = pkgs.pkgsCross.aarch64-multiplatform.gupnp;
  crossHamlib = pkgs.pkgsCross.aarch64-multiplatform.hamlib;
  crossHarfbuzz = pkgs.pkgsCross.aarch64-multiplatform.harfbuzz;
  crossHtop = pkgs.pkgsCross.aarch64-multiplatform.htop;
  #crossHydra = pkgs.pkgsCross.aarch64-multiplatform.hydra_unstable;
  crossImagemagick = pkgs.pkgsCross.aarch64-multiplatform.imagemagick;
  crossIproute2 = pkgs.pkgsCross.aarch64-multiplatform.iproute2;
  crossJq = pkgs.pkgsCross.aarch64-multiplatform.jq;
  crossLibaom = pkgs.pkgsCross.aarch64-multiplatform.libaom;
  crossLibass = pkgs.pkgsCross.aarch64-multiplatform.libass;
  crossLibgrss = pkgs.pkgsCross.aarch64-multiplatform.libgrss;
  crossLibnice = pkgs.pkgsCross.aarch64-multiplatform.libnice;
  crossLibopus = pkgs.pkgsCross.aarch64-multiplatform.libopus;
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
  #crossMegapixels = pkgs.pkgsCross.aarch64-multiplatform.megapixels;
  crossMesa = pkgs.pkgsCross.aarch64-multiplatform.mesa;
  crossModemmanager = pkgs.pkgsCross.aarch64-multiplatform.modemmanager;
  crossMosquitto = pkgs.pkgsCross.aarch64-multiplatform.mosquitto;
  crossNano = pkgs.pkgsCross.aarch64-multiplatform.nano;
  crossNginx = pkgs.pkgsCross.aarch64-multiplatform.nginx;
  crossNix = pkgs.pkgsCross.aarch64-multiplatform.nix;
  crossNixUnstable = pkgs.pkgsCross.aarch64-multiplatform.nixUnstable;
  #crossNuspell = pkgs.pkgsCross.aarch64-multiplatform.nuspell;  # loads of (haskell) dependencies (?)
  crossOpenalSoft = pkgs.pkgsCross.aarch64-multiplatform.openal;
  crossOpencv = pkgs.pkgsCross.aarch64-multiplatform.opencv;
  crossOpenexr = pkgs.pkgsCross.aarch64-multiplatform.openexr;
  crossOpenjpeg = pkgs.pkgsCross.aarch64-multiplatform.openjpeg;
  crossOpenssh = pkgs.pkgsCross.aarch64-multiplatform.openssh;
  crossOstree = pkgs.pkgsCross.aarch64-multiplatform.ostree;
  crossPango = pkgs.pkgsCross.aarch64-multiplatform.pango;
  crossPatch = pkgs.pkgsCross.aarch64-multiplatform.patch;
  crossPcsclite = pkgs.pkgsCross.aarch64-multiplatform.pcsclite;
  crossPipewire = pkgs.pkgsCross.aarch64-multiplatform.pipewire;
  crossPolkit = pkgs.pkgsCross.aarch64-multiplatform.polkit;
  crossPostgresql = pkgs.pkgsCross.aarch64-multiplatform.postgresql;
  crossPraat = pkgs.pkgsCross.aarch64-multiplatform.praat;  # gtk3 test case
  crossPython3 = pkgs.pkgsCross.aarch64-multiplatform.python3;
  crossQtBase = pkgs.pkgsCross.aarch64-multiplatform.qt6Packages.qtbase;
  crossQtLottie = pkgs.pkgsCross.aarch64-multiplatform.qt6Packages.qtlottie;
  #crossQtSvg = pkgs.pkgsCross.aarch64-multiplatform.qt6Packages.qtsvg; # Disabled because jasper is marked broken.
  crossRclone = pkgs.pkgsCross.aarch64-multiplatform.rclone; # go build times out
  crossRipgrep = pkgs.pkgsCross.aarch64-multiplatform.ripgrep;
  crossRsync = pkgs.pkgsCross.aarch64-multiplatform.rsync;
  crossRtl433 = pkgs.pkgsCross.aarch64-multiplatform.rtl_433;
  #crossRust = pkgs.pkgsCross.aarch64-multiplatform.rust;
  crossSamba = pkgs.pkgsCross.aarch64-multiplatform.samba;
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
  crossZeromq = pkgs.pkgsCross.aarch64-multiplatform.zeromq;
  crossZsh = pkgs.pkgsCross.aarch64-multiplatform.zsh;
}

