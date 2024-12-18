VERSION = 0.5.0

DOCKER = docker
BUILD_FLAGS = --no-cache

REGISTRY = git.dorian.cool
OWNER = deydoux
NAME = denv

IMAGE=$(REGISTRY)/$(OWNER)/$(NAME)

all: build push

build:
	$(DOCKER) build $(BUILD_FLAGS) -t $(IMAGE):$(VERSION) -t $(IMAGE):latest .

cache_build:
	@$(MAKE) build BUILD_FLAGS=""

push:
	$(DOCKER) push $(IMAGE):$(VERSION)
	$(DOCKER) push $(IMAGE):latest

.PHONY: all build cache_build push
