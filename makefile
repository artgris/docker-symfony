CMD=docker-compose
EXEC = $(CMD) exec
RUN=$(CMD) run --rm php
EXEC =  $(CMD) exec --user www-data:www-data php


CON = $(EXEC)'php bin/console '

bash:
	$(EXEC)'bash'

install: build up

bash:
	$(RUN) bash

build:
	$(CMD) build

up:
	$(CMD) up -d

down:
	$(CMD) down