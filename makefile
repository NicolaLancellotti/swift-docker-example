PROJECT_DIR=${shell cd .; pwd}
PROJECT_NAME=${shell basename ${PROJECT_DIR}}
DOCKER_RUN=docker run --rm -it \
				--mount type=bind,src=${PROJECT_DIR},target=/${PROJECT_NAME} \
				--workdir=/${PROJECT_NAME} ${PROJECT_NAME}

.PHONY: all
all:	build \
		test

.PHONY: build
build:
	@docker build --tag ${PROJECT_NAME} ${PROJECT_DIR}

.PHONY: test
test:
	@${DOCKER_RUN} swift test

.PHONY: run
run:
	@${DOCKER_RUN} swift run

.PHONY: clean
clean:
	@${DOCKER_RUN} swift package clean	

.PHONY: shell
shell:
	@${DOCKER_RUN} bash
