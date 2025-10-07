FROM nixos/nix:2.19.3

ENV SHELL=/bin/bash
# added for flakes but not used rn
ENV NIX_CONFIG="experimental-features = nix-command flakes"

WORKDIR /workspace

COPY shell.nix ./

RUN nix-shell --pure --run "echo 'Pre-run Nix env'"

COPY . .

# Normalize mcu-fw.sh so it runs with ./mcu-fw.sh (fix CRLF, shebang, +x)
RUN nix-shell -p gnused --run "set -eux; \
  test -f mcu-fw.sh; \
  sed -i 's/\r$//' mcu-fw.sh; \
  sed -i '1s|^#!.*$|#!/usr/bin/env bash|' mcu-fw.sh; \
  chmod +x mcu-fw.sh"

# Wrapper 'code' → lança code-server (VS Code no browser) na porta 8080
RUN mkdir -p /usr/local/bin && cat >/usr/local/bin/code <<'EOF'
#!/usr/bin/env bash
set -e
exec code-server --auth=none --bind-addr 0.0.0.0:8080 "$@"
EOF
RUN chmod +x /usr/local/bin/code

EXPOSE 8080

ENTRYPOINT ["nix-shell", "--pure"]
CMD ["--command", "export PATH=/usr/local/bin:$PATH; bash"]
