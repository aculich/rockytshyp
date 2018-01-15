VERSION=$(shell git rev-parse --short HEAD)
IMAGE=aculich/rockyter

VERSION_TAG=$(shell  git tag -l --points-at HEAD)

release: build
	echo $(VERSION)
	echo $(VERSION_TAG)

build:
	docker build -t $(IMAGE):latest .

push:
# docker push $(IMAGE):latest

#release: build push
