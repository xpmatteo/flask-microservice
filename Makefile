
build:
	docker build --rm=false -t hello-microservice .

run:
	docker run -p 5000:5000 -ti hello-microservice

run_single_worker:
	docker run -p 5000:5000 -e WORKERS=1 -ti hello-microservice
