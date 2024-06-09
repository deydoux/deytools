DOCKER		=	docker
IMAGE_TAG	=	denv

all:
	$(DOCKER) build -t $(IMAGE_TAG) .

clean:
	$(DOCKER) image rm -f $(IMAGE_TAG)

re: clean all

.PHONY: all clean re
