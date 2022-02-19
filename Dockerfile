FROM golang:latest
RUN mkdir -p /app
WORKDIR /app
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .
RUN make clean && \
    make build
EXPOSE 8000
ENTRYPOINT ["./bin/main"]