{
  description = "MCU SC Framework dev environment (STM32 toolchain, OpenOCD, Python)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ ];
        };

        # Python with common deps used by scripts
        python = pkgs.python3;
        pythonEnv = python.withPackages (ps: with ps; [
          pip
          setuptools
          wheel
          numpy
          matplotlib
          jinja2
          pyserial
        ]);

        # Java runtime for tools like leakiest JAR
        jre = pkgs.jre_headless;

        # ARM Embedded toolchain and debugging tools (single bundled toolchain)
        armToolchain = with pkgs; [
          gcc-arm-embedded          # provides arm-none-eabi-*
          openocd                   # flashing/debugger
          stlink                    # st-flash, st-util, st-info
          dfu-util                  # DFU flashing
        ];

        # Build tools and general CLI utilities
        baseTools = with pkgs; [
          cmake
          ninja
          gnumake
          pkg-config
          git
          jq
          python3Packages.virtualenv
          minicom
          picocom
          screen
          usbutils
          coreutils
          gawk
          grep
          findutils
          unzip
          zip
          which
          file
          bash
        ];

      in {
        devShells.default = pkgs.mkShell {
          name = "mcu-sc-framework";
          packages = [ pythonEnv jre ] ++ armToolchain ++ baseTools;

          # Friendly banner (no env hacks needed; withPackages wires Python)
          shellHook = ''
            echo "Loaded mcu-sc-framework dev shell for ${system}."
            echo "- arm-none-eabi-gcc: $(command -v arm-none-eabi-gcc || true)"
            echo "- openocd: $(command -v openocd || true)"
            echo "- st-flash: $(command -v st-flash || true)"
            echo "- python: $(command -v python || true)"
            echo "Tip: this shell is fish-compatible; your default shell is fish."
          '';
        };

        # A lighter shell without Java/matplotlib/numpy for CI or quick checks
        devShells.min = pkgs.mkShell {
          name = "mcu-sc-framework-min";
          packages = with pkgs; [
            (python3.withPackages (ps: with ps; [ jinja2 pyserial ]))
            jq cmake ninja gnumake git
          ];
        };

        # Provide formatter for nix files
        formatter = pkgs.nixpkgs-fmt;
      }
    );
}