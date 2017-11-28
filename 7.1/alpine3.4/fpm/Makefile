-include env_make

TAG ?= 7.1.12
PHP_DEBUG ?= 0

REPO = wodby/base-php
NAME = base-php-7.1.12

ifeq ($(PHP_DEBUG), 1)
    override TAG := $(TAG)-debug
    NAME := $(NAME)-debug
endif

.PHONY: build test push shell run start stop logs clean release

default: build

build:
	docker build -t $(REPO):$(TAG) -f Dockerfile.wodby --build-arg PHP_DEBUG=$(PHP_DEBUG) ./

test:
	IMAGE=$(REPO):$(TAG) ./test.sh

push:
	docker push $(REPO):$(TAG)

shell:
	docker run --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) /bin/bash

run:
	docker run --rm --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) $(CMD)

start:
	docker run -d --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG)

stop:
	docker stop $(NAME)

logs:
	docker logs $(NAME)

clean:
	-docker rm -f $(NAME)

release: build push
