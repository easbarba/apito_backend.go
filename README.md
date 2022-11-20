# Apito

Evaluate soccer referees' performance.

## Container

`Apito` development relies on containers you can start up with:

    $ make cluster && make up

### Podman

[podman](podman.io) is available in all major Linux distros repositories, set it up with:

    $ make podman

> Inspect the `Makefile` before running its tasks, of course.

# Endpoint

k3d will forward k8s external-ip to `8080` on host.

[Docker Hub](https://hub.docker.com/r/easbarbosa/apito)

## License

[GPL-v3](https://www.gnu.org/licenses/gpl-3.0.en.html)
