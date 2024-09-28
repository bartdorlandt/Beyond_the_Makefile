.PHONY: build run print
include .env

VERSION = latest
IMAGE = tmp_test_image
PLATFORM = linux/amd64

build:
	docker buildx build -f Dockerfile -t ${IMAGE}:${VERSION} --platform ${PLATFORM} .

run:
	docker run --rm ${IMAGE}:${VERSION}

# chain tasks
multiple: run
	make run
	@make run  # do not echo this line
	@make run  # do not echo this line

# vars can be packed in () and {}
print:
	echo "Variable print. Var1: $(VAR1), Var2: $(VAR2)"
