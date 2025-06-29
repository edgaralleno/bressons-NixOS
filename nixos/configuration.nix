# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Filesystems
  boot.supportedFilesystems = {
    ntfs = true;
    vfat = true;
    btrfs = true;
  };

  # fileSystems."/Media" = {
  #     device = "/dev/sdc1/"; 
  #     };

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Latest kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "bressons-nixos"; # Define your hostname.
#  networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.


  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.natem = {
    isNormalUser = true;
    description = "natem";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

# Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget				# search tool? idk i never use it
    firefox				# browser
    btop				# system monitor
    yazi				# terminal file tree viewer
    dunst 				# notif daemon
    rofi-wayland			# app launcher
    kitty				# terminal emulator
    uwsm				# systemd hyprland bridge
    darktable				# raw photo editing software
    pavucontrol				# sound device manager
    cliphist				# works with wl-clipboard to display my clipboard history in rofi. 
    					# not really that usable
    # hypridle				# hypr ecosystem idle daemon <- requires more configuration with hyprlock.
    # hyprlock				# hypr ecosystem lock daemon
    hyprpaper				# hypr ecosystem wallpaper manager
    hyprcursor				# hypr ecosystem cursor manager
    # gtk4				# trying more things to mess with the cursor
    # gtk3				# trying more things to mess with the cursor. 
    					# hopefully having both gtk3&4 won't break things?
    nwg-look				# trying more things to mess with the cursor. 
    					# first trying install of this w/o gtk3 or 4
    wl-clipboard			# self-explanatory
    ripgrep 				# necessary for clipboard stuff I think
    soulseekqt 				# P2P file sharing
    nicotine-plus			# slsk client
    libnotify 				# Necessary for dunst
    nextcloud-client			# cloud storage client
    vim					# reinstalled this because it was necessary for something. can't remember what
    stylua				# I thougt installing this would make the 'failed to install stylua' warnings 
    					# in neovim go away but that's not the case
    # xorg.xcursorthemes		# trying to get rid of the stupid hyprland logo cursor
    # xorg.xcursorgen			# also trying to get rid of the stupid hyprland logo cursor
    nomacs				# photo viewer and cataloguer
    # audacious				# music player!
    ncmpcpp				# ncurses mpd client
    mpc
    kew					# music player clients
    yams				# last.fm scrobbler for mpd
    swww				# a different wallpaper manager than hyprpaper
    waybar				# status bar!
    mpv					# media player
    prismlauncher			# minecraft!
    webcord				# discord client
    homebank				# accounting software
    quickemu				# easy virtual machines
    qemu				# might be provided by pkgs.quickemu. 
    					# is the emulator framework that quickemu is built on
    spice-gtk				# enables SPICE protocol file sharing
    slack				# messaging client for work
    wev					# Wayland event viewer for debugging
    playerctl				# installing this to see if it makes my volume buttons work
    blender				# 3d modeling and video editing/compositing
    unzip				# extraction utility for archives
    zip					# archiving utility
    pdf4qt				# PDF viewer
    libreoffice-qt6-fresh		# office suite
    hunspell				# spellcheck library
    hunspellDicts.en_US			# English (US) hunspellDict
    gdb					# GNU Project debugger
    ardour				# DAW
    kdePackages.kdenlive		# NLVE
    lsp-plugins				# BIG plugin collection compatible w/ VST, LV2, LADSPA
    surge				# another DAW plugin
    zam-plugins				# plugin collection
    oxefmsynth				# synth plugin
    lv2					# plugin standard
    drum-machine			# drum machine!
    drumgizmo				# sample based drum plugin
    pywal16				# color scheme generator
    imagemagick				# bitmap backend
    inkscape-with-extensions		# vector graphics editor
    gimp-with-plugins			# GNU Image editor
    scribus				# desktop publishing
    sqlite				# database software
    sqlitestudio			# GUI app for sqlite
    sqlitebrowser			# sqlite database client to replace sqlitestudio
    zoom-us				# zoom.us video conferencing
    grim
    slurp				# screenshot utilities
    xdg-user-dirs			# handles common user directories like Pictures automatically
    calibre				# ebook manager
    # lmms				# FL Studio-like DAW
    # reaper				# DAW Free-trial
    openrefine				# power tool for data cleaning
    olive-editor			# video editing software
    usbutils				# Tools for working with USB devices, such as lsusb
    # libimobiledevice			# Lib for connecting with iOS devices
    # ifuse				# Fuse filesystem implementation to access the contents of iOS devices
    koboldcpp				# client for GGML and GGUF LLM model files
    gpt4all				# gpt4all client
    ollama				# llm client
    ddrescue				# data recovery, copies data between block devices
    libgcc				# gnu compiler library
    calcurse				# text-based calendar client
    thunderbird				# email client
    gh					# github cli
    eww					# elkowars wacky widgets
    pywalfox-native			# for firefox and thudnerbird styling
    rxvt-unicode			# rxvt terminal emu
    neofetch				# system info displayer for screenshots for unixporn
    colorz				# color theme generator
    python313Packages.colorthief	# color theme package
    python313Packages.modern-colorthief
    cbonsai				# cute litte bonsai tree
    mako				# notification manager developed by swaywm maintainer
    # kdePackages.kdeconnect-kde          # kdeconnect
    valent				# implementation of the kde connect protocol?
    netcat-gnu
    khal				#  webDAV compatible calendar client
    vdirsyncer
    ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

    programs.hyprland.enable = true;
    programs.sway = {
        enable = true;
	wrapperFeatures.gtk = true;
    };
    services.gnome.gnome-keyring.enable = true;
    environment.sessionVariables.NIXOS_OZONE_WL = "1";
    programs.uwsm.enable = true;
    programs.uwsm.waylandCompositors = {
      hyprland = {
        prettyName = "Hyprland";
        comment = "Hyprland compositor managed by UWSM";
        binPath = "/run/current-system/sw/bin/Hyprland";
      };
      sway = {
      	prettyName = "Sway";
	comment = "Sway compositor managed by UWSM";
	binPath = "/run/current-system/sw/bin/sway";
      };
    };

    programs.neovim = {
      enable = true;
      defaultEditor = true;
    };

    programs.kdeconnect = {
        enable = true;
    };
    
    programs.git.enable = true;
    # Nextcloud and other related services like NGINX <- this might just be servers. commenting out for a test.
    # services.nginx.enable = true;
    # environment.etc."nextcloud-admin-pass".text = "bressons10thousandpictures";
    # services.nextcloud = {
      # enable = true;
      # package = pkgs.nextcloud30;
      # hostName = "local host";
      # config.adminpassFile = "/etc/nextcloud-admin-pass";
      # config.dbtype = "sqlite";
    # };

    # Steam!
    programs.steam.enable = true;

    # udisks for removeable media manipulation:
    services.udisks2.enable = true;

    # Printing service and wireless printer configuration:
    services.printing.enable = true;
    services.avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    }; 
    
    services.mpd = {
        enable = true;
	musicDirectory = "/home/natem/Storage/Music/Library/";
	extraConfig = ''
	  audio_output {
	      type "pipewire"
	      name "Pipewire"
	  }
	  audio_output {
	      type "fifo"
	      name "Visualization feed"
	      path "/tmp/mpd.fifo"
	      format "44100:16:2"
	  }
	'';
	network.listenAddress = "any";
	user = "natem";
    };
    systemd.services.mpd.environment = {
        XDG_RUNTIME_DIR = "/run/user/${toString 1000}"; 
    };
    services.pipewire = {
    	enable = true;
	audio.enable = true;
	alsa.enable = true;
	alsa.support32Bit = true;
	pulse.enable = true;
    };

    #Fonts!
    fonts.packages = with pkgs; [
	roboto
	helvetica-neue-lt-std
	fragment-mono
	aileron
	font-awesome
	arkpandora_ttf
	times-newer-roman
	liberation_ttf
    ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);

    # services.xserver.enable = true; 	# commenting this out because I have a suspicion I don't need to enable xserver. 
    					# basis for this hunch is in the fact that I'm getting a warning 
					# that services.xserver.displayManager.sddm 'has been renamed 
					# to services.displayManager.sddm'
    # services.xserver.displayManager.sddm.enable = true;
    # services.xserver.displayManager.sddm.wayland.enable = true;
    # services.xserver.displayManager.sddm.theme = "where_is_my_sddm_theme";
    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      #theme = "insert theme here" #need to find an sddm theme that I like. 
};

  # VM configuration
  virtualisation.spiceUSBRedirection.enable = true;

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 6600 ];
  networking.firewall.allowedUDPPorts = [ 6600 ];
  networking.firewall.allowedTCPPortRanges = [ { from = 1700; to = 1764; } ];
  networking.firewall.allowedUDPPortRanges = [ { from = 1700; to = 1764; } ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

}
