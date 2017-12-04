
.PHONY: build
build:
	docker build --rm=false -t hello-microservice .

run:
	docker run -p 5000:5000 -ti hello-microservice
