mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))
CD = cd ../../docker-symfony && docker-compose exec
CD_PROJECT = php sh -c 'cd $(current_dir) && '
EXEC =  $(CD) --user www-data:www-data $(CD_PROJECT)
EXEC_ROOT = $(CD) $(CD_PROJECT)
CONSOLE = $(EXEC)'php bin/console '

# make ci
# make ddc
# make dsu
# make import

#bash
b:
	$(EXEC)'bash'

broot:
	$(EXEC_ROOT)'bash'

#composer
ci:
	$(EXEC)'composer install'

cu:
	$(EXEC)'composer update'

#import sql
import:
	$(CONSOLE)'app:users:populate'

#cache
cc:
	$(CONSOLE)'c:c'

#doctrine
ddc:
	$(CONSOLE)'d:d:c'

dfl:
	$(CONSOLE)'d:d:d --force'
	$(CONSOLE)'d:d:c'
	$(CONSOLE)'d:s:u --force'
	$(CONSOLE)'d:f:l -n'

dsu:
	$(CONSOLE)'d:s:u --force'

dsv:
	$(CONSOLE)'d:s:v'

#npm
npm:
	$(EXEC)'npm install'

#yarn
yarn:
	$(EXEC)'yarn install'

#test
tu:
	$(EXEC)'vendor/bin/phpunit'
