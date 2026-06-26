FROM alpine:3.24
RUN apk add --no-cache ca-certificates git git-lfs openssh curl perl aws-cli sudo

ADD posix/* /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/clone"]
