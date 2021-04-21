FROM golang:1.14.9-alpine as builder
#FROM alpine:latest AS builder

RUN mkdir /www

WORKDIR /www

COPY . .

RUN go build -o demo /www/demo.go

FROM alpine:latest
WORKDIR /www/

EXPOSE 8083

COPY --from=builder /www/  /www/ 
CMD ./demo

