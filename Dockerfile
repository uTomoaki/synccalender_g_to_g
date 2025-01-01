FROM golang:1.23-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git curl

WORKDIR /app

COPY go.mod .

RUN go mod download && go mod verify

COPY . .
