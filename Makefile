DOCKER		=	docker

REGISTRY	=	git.dorian.cool
OWNER		=	dorian
NAME		=	denv
TAG			=	0.1

IMAGE		=	$(REGISTRY)/$(OWNER)/$(NAME):$(TAG)

all: build push

build:
	$(DOCKER) build -t $(IMAGE) .

push:
	$(DOCKER) push $(IMAGE)

clean:
	$(DOCKER) image rm -f $(IMAGE)

re: clean all

.PHONY: all clean re
