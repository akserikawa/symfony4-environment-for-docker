# container commands
up:
	docker-compose up -d

stop:
	docker-compose stop

down:
	docker-compose down

install_symfony: install_symfony_skeleton install_phpunit

# installation commands
install_symfony_skeleton:
	mkdir ./app
	docker-compose up -d
	docker exec -it php7 composer create-project symfony/skeleton /app

install_phpunit:
	docker exec -it php7 composer require --dev symfony/phpunit-bridge

# app commands
cache-clear:
	docker exec -it php7 php bin/console cache:clear --no-warmup

# composer commands
composer_install:
	docker exec -it php7 composer install
composer_update:
	docker exec -it php7 composer update
composer_require:
	docker exec -it php7 composer require $(package)
composer_remove:
	docker exec -it php7 composer remove $(package)
composer_show:
	docker exec -it php7 composer show
composer_dump-env:
	docker exec -it php7 composer dump-env $(env)

# phpunit
phpunit:
	docker exec -it php7 php bin/phpunit

# access to container via shell
php_bash:
	docker exec -it php7 /bin/sh

# git commands
git_init:
	docker exec -it php7 git init
git_version:
	docker exec -it php7 git --version
git_pull:
	docker exec -it php7 git pull
git_push:
	docker exec -it php7 git push remote $(origin)
git_fetch:
	docker exec -it php7 git fetch $(origin)
git_status:
	docker exec -it php7 git status
git_log:
	docker exec -it php7 git log
git_remote_version:
	docker exec -it php7 git remote -v
git_remote_set:
	docker exec -it php7 git remote add $(origin) $(url)
