self: super: {
  betaflightConfigurator =
    let
      pname = "betaflight-configurator";
      desktopItem = super.makeDesktopItem {
        name = pname;
        exec = pname;
        icon = pname;
        comment = "Betaflight configuration tool";
        desktopName = "Betaflight Configurator";
        genericName = "Flight controller configuration tool";
      };
    in
    super.stdenv.mkDerivation rec {
      inherit pname;
      version = "10.9.0";
      src = super.fetchurl {
        url = "https://github.com/betaflight/${pname}/releases/download/${version}/${pname}_${version}_linux64-portable.zip";
        sha256 = "sha256-9FzMyBIR2u1zXHtTWJABM6RF1+OyjYdEPlRwtig9blI=";
      };

      # remove large unneeded files
      postUnpack = ''
        find -name "lib*.so" -delete
      '';

      nativeBuildInputs = [ super.wrapGAppsHook super.unzip ];

      buildInputs = [ super.dbus-glib super.dbus super.gsettings-desktop-schemas super.gtk3 ];

      # Erzwingen der spezifischen NW.js-Version
      NWJS_SRC = super.fetchurl {
        url = "https://dl.nwjs.io/v0.84.0/nwjs-v0.84.0-linux-x64.tar.gz";
        hash = "sha256-VIygMzCPTKzLr47bG1DYy/zj0OxsjGcms0G1BkI/TEI=";
      };

      installPhase = ''
        runHook preInstall
        mkdir -p $out/bin \
        $out/opt/${pname}

        tar -xf $out-nwjs-v0.84.0-linux-x64.tar.gz -C $out/bin/

        cp -r. $out/opt/${pname}/
        install -m 444 -D icon/bf_icon_128.png $out/share/icons/hicolor/128x128/apps/${pname}.png
        cp -r ${desktopItem}/share/applications $out/share/

        makeWrapper $out/bin/nwjs-v0.84.0-linux-x64/nw $out/bin/${pname} --add-flags $out/opt/${pname}
        runHook postInstall
      '';

      meta = with self.lib; {
        description = "The Betaflight flight control system configuration tool";
        longDescription = ''
          A crossplatform configuration tool for the Betaflight flight control system.
          Various types of aircraft are supported by the tool and by Betaflight, e.g.
          quadcopters, hexacopters, octocopters and fixed-wing aircraft.
        '';
        homepage = "https://github.com/betaflight/betaflight/wiki";
        sourceProvenance = with builtins; [ sourceTypes.binaryNativeCode ];
        license = licenses.gpl3;
        maintainers = with self.maintainers; [ wucke13 ];
        platforms = platforms.linux;
      };
    };
}
