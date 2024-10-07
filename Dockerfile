ARG TALOS_VERSION=latest
FROM ghcr.io/siderolabs/talosctl:$TALOS_VERSION AS talosctl


FROM ghcr.io/containerd/busybox:1.36
ARG TALOS_VERSION

LABEL org.opencontainers.image.description "Busybox image with talosctl ($TALOS_VERSION)"

COPY --from=talosctl /talosctl /usr/local/bin/talosctl
VOLUME [ "/var/run/secrets/talos.dev" ]
CMD [ "/bin/sh" ]
