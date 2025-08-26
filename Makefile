-include version.txt

DOCKER = docker
BUILD_FLAGS = --no-cache

REGISTRY = ghcr.io
OWNER = deydoux
NAME = deytools

IMAGE=$(REGISTRY)/$(OWNER)/$(NAME)

all: build push

build:
	$(DOCKER) build $(BUILD_FLAGS) -t $(IMAGE):latest -t $(IMAGE):$(MAJOR) -t $(IMAGE):$(MAJOR).$(MINOR) -t $(IMAGE):$(MAJOR).$(MINOR).$(PATCH) .

cache_build:
	@$(MAKE) build BUILD_FLAGS=""

push:
	$(DOCKER) push $(IMAGE):$(VERSION)
	$(DOCKER) push $(IMAGE):latest

.PHONY: all build cache_build push
