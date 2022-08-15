FROM golang:1.19-alpine

RUN apk add git
COPY . /
RUN go mod download
WORKDIR /

ENTRYPOINT ["go", "run", "/github.go"]
