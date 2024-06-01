self: super: {
  BlHeliSuite32xl =
    let
      pname = "blhelisuite32";
      desktopItem = super.makeDesktopItem {
        name = pname;
        exec = pname;
        icon = pname;
        comment = "BlHeli32 ESC Configurator";
        desktopName = "BlHeli32Suite";
        genericName = "BlHeli32 ESC Configurator";
      };
    in
    super.stdenv.mkDerivation rec {
      inherit pname;
      version = "10.0.0";
      src = super.fetchurl {
        url = "https://github.com/bitdump/BLHeli/releases/download/Rev32.10/BLHeliSuite32xLinux64_1044.zip";
        sha256 = "sha256-Fi/rMQz02/2QVTY32Q16DcJPWmeVcx+EjcN+meBxt14=";
      };

      # remove large unneeded files
      postUnpack = ''
      '';

      nativeBuildInputs = [ super.wrapGAppsHook super.unzip super.libGL super.autoPatchelfHook ];

      buildInputs = [  super.gvfs super.libgcc super.libgccjit super.libGL super.libglibutil super.zlib super.gtk3 super.systemdLibs super.glibc ];

      installPhase = ''
        runHook preInstall

          mkdir -p $out/bin \
                   $out/opt/${pname}

          cp -r . $out/opt/${pname}/
          #install -m 444 -D icon/bf_icon_128.png $out/share/icons/hicolor/128x128/apps/${pname}.png
          cp -r ${desktopItem}/share/applications $out/share/

          makeWrapper $out/opt/${pname}/BLHeliSuite32xl $out/bin/${pname} --add-flags $out/opt/${pname}
          patchelf --set-rpath '$out/lib' $out/opt/${pname}/BLHeliSuite32xl
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

