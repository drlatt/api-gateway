FROM golang as builder

RUN mkdir /build
WORKDIR /build
COPY main.go /build/
RUN go get -d -v ./...
RUN CGO_ENABLED=0 GOOS=linux go build -o hello_app

FROM golang:alpine
COPY --from=builder /build/hello_app  .

EXPOSE 8081

CMD ["./hello_app"]