.PHONY: build
build:
	docker build . -t booniepepper/dt:latest >build.log

.PHONY: test
test: build
	docker run booniepepper/dt

.PHONY: release
release: build test
	docker push booniepepper/dt:latest
