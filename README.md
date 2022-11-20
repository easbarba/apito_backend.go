# Apito

Evaluate soccer referees' performance.

## Container

`Apito` development relies on containers you can start up with:

    $ make cluster

    $ make up

### Podman

If you use `podman`, as I am, you will need to enable a few settings:

    $ make found

Inspect the `Makefile` before running its tasks, of course.

# Endpoint

k3d will forward k8s external-ip to `8080` on host.

[Docker Hub](https://hub.docker.com/r/easbarbosa/apito)

## License

[GPL-v3](https://www.gnu.org/licenses/gpl-3.0.en.html)
