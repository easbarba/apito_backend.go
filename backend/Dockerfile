FROM golang:1.19-alpine AS builder
MAINTAINER EAS Barbosa <easbarba@outlook.com>

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

ENV GOOS=linux
ENV GOARCH=amd64

RUN go build -o ./apito .

# FINAL STAGE
FROM golang:1.19-alpine

COPY --from=builder /app/apito /apito

ENTRYPOINT [ "/apito" ]
