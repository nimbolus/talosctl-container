# Container image for talosctl based on busybox

Container image based on [ghcr.io/containerd/busybox](https://github.com/containerd/containerd/pkgs/container/busybox) with talosctl.
This image is useful for running shell scripts using talosctl (e.g. backup scripts).

## How to start

```sh
podman run \
    -v $PWD/talosconfig.yaml:/var/run/secrets/talos.dev/config \
    ghcr.io/nimbolus/container-talosctl
```
