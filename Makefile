version := latest

.PHONY: build
build:
	docker build . -t booniepepper/dt:$(version) >build.log

.PHONY: test
test: build
	docker run booniepepper/dt:$(version)

.PHONY: release
release: build test
	docker push booniepepper/dt:$(version)
