FROM alpine:latest

ARG VERSION=1.3.1
RUN apk add curl \
  && curl -L "https://github.com/so-dang-cool/dt/releases/download/v$VERSION/dt-x86_64-linux-gnu.tgz" -o dt.tgz \
  && tar -xzvf dt.tgz

ENTRYPOINT ["./dt"]
CMD ["drop \"dt \" p version pl [[For REPL --> docker run -it dt [...]] [Otherwise -> docker run -i dt [...]]] \\unwords map pls"]

