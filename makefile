CMD=docker-compose
RUN=$(CMD) run --rm php

install: build up

bash:
	$(RUN) bash

build:
	$(CMD) build

up:
	$(CMD) up -d