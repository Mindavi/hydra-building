{ ... }:
let
  pkgs = (import <nixpkgs> {
    #config.contentAddressedByDefault = true;
  });
  cross = pkgs.pkgsCross.aarch64-multiplatform;
in {
  # some interesting packages / packages I'm the maintainer of.
  aflplusplus = pkgs.aflplusplus;
  rtl_433 = pkgs.rtl_433;
  jq = pkgs.jq;
  nix = pkgs.nix;
  nixGit = pkgs.nixVersions.git;
  nomacs = pkgs.nomacs;

  # cross packages

  # build
  crossBison = cross.bison;
  crossPatch = cross.patch;

  # networking
  crossElinks = cross.elinks;
  crossWget = cross.wget;

  # games
  crossCurseofwar = cross.curseofwar;

  # shells
  crossDash = cross.dash;
  crossElvish = cross.elvish;
  crossGit = cross.git;
  crossIon = cross.ion;
  crossLiquidprompt = cross.liquidprompt;
  crossMksh = cross.mksh;
  crossMrsh = cross.mrsh;
  crossNushell = cross.nushell;
  crossOh = cross.oh;
  crossRush = cross.rush;
  crossXonsh = cross.xonsh;
  crossZsh = cross.zsh;

  # editors
  crossEd = cross.ed;
  crossElvis = cross.elvis;
  crossOx = cross.ox;
  crossNano = cross.nano;
  crossVim = cross.vim;

  # graphics
  crossBatik = cross.batik;
  crossBspwm = cross.bspwm;
  crossJpegoptim = cross.jpegoptim;
  crossMozjpeg = cross.mozjpeg;
 
  # backup / file mgmt
  crossFile = cross.file;
  crossFzf = cross.fzf;
  crossJq = cross.jq;
  crossRclone = cross.rclone;
  crossRipgrep = cross.ripgrep;
  crossRsync = cross.rsync;
  crossSl = cross.sl;
  crossTree = cross.tree;

  # servers
  crossOpenldap = cross.openldap;
  crossSkydns = cross.skydns;

  # misc
  crossAgate = cross.agate;
  crossAsciigraph = cross.asciigraph;
  crossBc = cross.bc;
  crossBftpd = cross.bftpd;
  crossBird = cross.bird;
  crossCacert = cross.cacert;
  crossCowsay = cross.cowsay;
  crossCups = cross.cups;
  crossDhcpcd = cross.dhcpcd;
  crossDos2unix = cross.dos2unix;
  crossDpkg = cross.dpkg;
  crossDwm = cross.dwm;
  crossFftw = cross.fftw; # in the closure of a lot of packages
  crossGotifycli = cross.gotify-cli;
  crossHtop = cross.htop;
  crossInetutils = cross.inetutils;
  crossLshw = cross.lshw;
  crossLzop = cross.lzop;
  crossMd5sum = cross.isomd5sum; # requires adding python to nativeBuildInputs
  crossMicrocom = cross.microcom;
  crossMosquitto = cross.mosquitto;
  crossMujs = cross.mujs;
  crossNginx = cross.nginx;
  crossNgircd = cross.ngircd;
  crossOdt2txt = cross.odt2txt;
  crossOpenssh = cross.openssh;
  crossPciutils = cross.pciutils;
  crossProgress = cross.progress;
  crossRestic = cross.restic;
  crossShipyard = cross.shipyard;
  crossSilversearcher = cross.silver-searcher;
  crossSt = cross.st;
  crossSwaykbdd = cross.swaykbdd;
  crossUnzip = cross.unzip;
  crossUrlhunter = cross.urlhunter;
  crossUsbutils = cross.usbutils;
  crossWhois = cross.whois;
  crossWtype  = cross.wtype;
  crossZmap = cross.zmap;
}

