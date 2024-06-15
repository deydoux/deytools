VERSION		=	0.2

DOCKER		=	docker
BUILD_FLAGS	=	--no-cache

REGISTRY	=	git.dorian.cool
OWNER		=	dorian
NAME		=	denv

IMAGE		=	$(REGISTRY)/$(OWNER)/$(NAME)

all: build push

build:
	$(DOCKER) build $(BUILD_FLAGS) -t $(IMAGE):$(VERSION) -t $(IMAGE):latest .

cache_build:
	@$(MAKE) build BUILD_FLAGS=""

push:
	$(DOCKER) push $(IMAGE)

clean:
	$(DOCKER) image rm -f $(IMAGE)

re: clean all

.PHONY: all build cache_build push clean re
