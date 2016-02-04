REPOSITORY   = flippa/curator
TAG         ?= v1
IMAGE        = $(REPOSITORY):$(TAG)
LATEST       = $(REPOSITORY):latest

image: Dockerfile
	docker build --rm -t $(IMAGE) .
	docker tag -f $(IMAGE) $(LATEST)

.PHONY: push
push:
	docker push $(IMAGE)
	docker push $(LATEST)
