FROM golang:1.21-bookworm

ARG VERSION

RUN apt-get update \
  && apt-get install -y --no-install-recommends clang git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENV CGO_ENABLED 1
ENV CXX clang++

WORKDIR /go-zetasqlfmt

RUN git clone https://github.com/nametake/go-zetasqlfmt.git . \
    && go mod download \
    && go install ./cmd/zetasqlfmt
