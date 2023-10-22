export SHA=$(shell git rev-parse HEAD)

.PHONY: build
build:
	docker build -t nycdavid/ankii:$$SHA .

.PHONY: push
push: build
	docker image push nycdavid/ankii:$$SHA
