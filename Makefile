NAME=dalibo/cornac-sdk
VERSION=latest

default:

debian:
	docker build -t $(NAME):$@ -f Dockerfile.$@ .

clean:
	docker images --quiet $(NAME) | xargs --no-run-if-empty --verbose docker rmi -f
