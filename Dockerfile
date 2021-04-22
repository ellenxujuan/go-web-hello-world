FROM golang:alpine
RUN mkdir /www-hello
COPY . /www-hello
WORKDIR /www-hello
RUN go build -o demo .
CMD ["/wwww-hello/demo"]
