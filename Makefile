export SHA=$(shell git rev-parse HEAD)

.PHONY: build
build:
	docker build -t nycdavid/ankii:$$SHA --platform linux/amd64 .

.PHONY: push
push: build
	docker image push nycdavid/ankii:$$SHA
