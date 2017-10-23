CMD=docker-compose exec php

bash:
	$(CMD) bash

install: docker cache

docker:
	- docker-compose build
	- docker-compose up -d

composer:
	- $(CMD) composer install
	- $(CMD) php bin/console doctrine:database:create
	- $(CMD) php bin/console  doctrine:schema:update --force

fixt:
	$(CMD) php bin/console  doctrine:fixtures:load --no-interaction

cache:
	$(CMD) chmod -R 777 var/cache var/logs web/cache