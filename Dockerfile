FROM golang:latest
RUN mkdir /build
WORKDIR /build
RUN export GO111MODULE=on
RUN git clone https://github.com/SubhramRanaRZP/my-app && \
    make clean && \
    make build
EXPOSE 8000/tcp

ENTRYPOINT ["/build/bin/main"]