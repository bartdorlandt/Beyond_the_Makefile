# Syntax like Makefil

# allow for additional arguments
set positional-arguments
set dotenv-load

VERSION := 'latest'
IMAGE := 'tmp_test_image'

# internal variables: {{var}}
# environment variables: $var
# internal can be set as env variables with `set export`

default:
	@just --list --unsorted --justfile {{justfile()}}

[group('docker')]
build:
	docker buildx build -f Dockerfile -t {{IMAGE}}:{{VERSION}} .

[group('docker')]
run *args='':
	docker run --rm {{IMAGE}}:{{VERSION}} $@

# chain tasks
multiple: run
	just run
	@just run  # do not echo this line
	@just run  # do not echo this line

# vars can be packed in $ and ${}
print:
	echo "Variable print. Var1: ${VAR1}, Var2: ${VAR2}"
