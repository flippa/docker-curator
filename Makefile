REGISTRY    ?= quay.io/flippa
PROJECT     ?= curator
TAG         ?= v1
IMAGE       = $(REGISTRY)/$(PROJECT):$(TAG)

.PHONY: image
image: Dockerfile
	docker build --rm -t $(IMAGE) .

.PHONY: push
push:
	docker push $(IMAGE)
