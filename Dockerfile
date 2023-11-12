# syntax=docker/dockerfile:1

FROM nixos/nix:master

RUN nix-channel --update
RUN nix-env --install --attr nixpkgs.nix nixpkgs.cacert
RUN nix-env --install curl gzip tar xz
RUN nix-env --install zig
RUN nix \
  --extra-experimental-features nix-command \
  --extra-experimental-features flakes \
  build github:so-dang-cool/dt

ENTRYPOINT ["/result/bin/dt"]
CMD ["drop \"dt \" p version pl [[For REPL --> docker run -it dt [...]] [Otherwise -> docker run -i dt [...]]] \\unwords map pls"]

