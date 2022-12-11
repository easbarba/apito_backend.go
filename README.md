# Apito | Back-end

## Installation

Get all dependencies and install with:

    $ make deps && make build 

## Ops

### Insomnia 
Insomnia tasks are available to easy reproducibility of the API endpoints, the
latest files are at the ops folder.

### OpenAPI
API specification is generated at every release and can placed at the ops
folder. A Swagger UI is also available:

    $ make spec

PS: To generate the correct current api version, do export an environment variable `$APITO_BACKEND_VERSION` returning `.version` value.

## License

[GPL-v3](https://www.gnu.org/licenses/gpl-3.0.en.html)
