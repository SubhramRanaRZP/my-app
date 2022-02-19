FROM golang:latest
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN make clean && \
    make build
EXPOSE 8000
ENTRYPOINT ["./bin/main"]