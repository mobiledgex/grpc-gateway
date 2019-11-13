FROM registry.mobiledgex.net:5000/mobiledgex/build:go1.12.1 AS build

ENV GOPATH=/go

WORKDIR /build
COPY . .
RUN make clean
RUN make bin/protoc-gen-swagger
