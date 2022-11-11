deps:
	go mod download

lint:
	golint ./...

vet:
	go vet ./...

run:
	go run main.go

spec:
	swagger generate spec -o ops/api_spec-${APITO_VERSION}.json
	swagger serve ops/api_spec-${APITO_VERSION}.json

build:
	go build -o apito .

compose:
	podman-compose -f ops/docker-compose.yml down
	podman-compose -f ops/docker-compose.yml up --detach

compose-build:
	podman-compose -f ops/docker-compose.yml down
	podman-compose -f ops/docker-compose.yml up --detach --build

watch:
	CompileDaemon --command="./apito"

imports:
	goimports -l -w .
