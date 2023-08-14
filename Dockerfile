# syntax=docker/dockerfile:1

FROM nixos/nix:master

RUN nix-channel --update
RUN nix-env --install --attr nixpkgs.nix nixpkgs.cacert
RUN nix-env --install dt

ENTRYPOINT ["dt"]
CMD ["drop \"dt \" p version pl [[For REPL --> docker run -it dt [...]] [Otherwise -> docker run -i dt [...]]] \\unwords map pls"]

