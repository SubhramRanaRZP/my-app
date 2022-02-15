FROM golang:latest
WORKDIR /
RUN export GO111MODULE=on
RUN git clone https://github.com/SubhramRanaRZP/my-app
WORKDIR my-app
RUN make clean && \
    make build
EXPOSE 8000/tcp

ENTRYPOINT ["./bin/main"]