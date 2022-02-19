.PHONY: build
build:
	echo "building binaries..."
	go build -v -o ./bin/main main.go

.PHONY: start
start:
	echo "starting server..."
	./bin/main

.PHONY: clean
clean:
	echo "cleaning binaries..."
	rm -rf bin/*

.PHONY: run
run: clean build start

.PHONY:	build-image
build-image:
	echo "building image..."
	docker build -t my-app .

.PHONY: run-image
run-image:
	echo "spinning up container..."
	docker run -d -p 127.0.0.1:8000:8000 --name my-app my-app

.PHONY: container
container: build-image run-image