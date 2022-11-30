deps:
	go mod download

lint:
	golint ./...

vet:
	go vet ./...

run:
	go run main.go

test:
	go test ./...

spec:
	swagger generate spec -o ops/api_spec-${APITO_VERSION}.json
	swagger serve ops/api_spec-${APITO_VERSION}.json

build:
	go build -o apito .

watch:
	CompileDaemon --command="./apito"

imports:
	goimports -l -w .
