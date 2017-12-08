CD = cd ../../docker-symfony && docker-compose exec
EXECROOT = $(CD) php sh -c 'cd project && '
EXEC =  $(CD) --user www-data:www-data php sh -c 'cd project && '
CON = $(EXEC)'php bin/console '

bash:
	$(EXEC)'bash'

bashroot:
	$(EXECROOT)'bash'

perm:
	- $(EXECROOT)'chown -R www-data: .'
#	- $(EXECROOT)'chmod -R 777 var/www/.composer'
#	- $(EXECROOT)'chmod -R 777 var/cache var/log'
c:
	$(CON)'$(c)'

cc:
	$(CON)'c:c'

ddc:
	$(CON)'doctrine:database:create'

dfl:
	$(CON)'doctrine:fixtures:load -n'

dsu:
	$(CON)'d:s:u --force'

ci:
	$(EXEC)'composer install'

tu:
	$(EXEC)'vendor/bin/phpunit'