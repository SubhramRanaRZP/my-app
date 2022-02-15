FROM golang:latest
RUN mkdir /build
WORKDIR /build
RUN export GO111MODULE=on
RUN git clone
EXPOSE 8000/tcp

ENTRYPOINT ["make","run"]