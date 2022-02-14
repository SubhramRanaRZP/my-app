.PHONY: build
build:
	go build -v -o ./bin/main main.go

.PHONY: start
start:
	./bin/main

.PHONY: clean
clean:
	rm -rf bin/*

.PHONY: run
run: clean build start