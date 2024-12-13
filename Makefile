.PHONY: install
install:
	poetry install

.PHONY: migrations
migrations:
	poetry run python -m manage makemigrations posts

.PHONY: migrate
migrate:
	poetry run python -m manage migrate

.PHONY: run-server
run-server:
	 poetry run python -m manage runserver

.PHONY: superuser
superuser:
	poetry run python -m manage createsuperuser

# .PHONY: up-dependencies-only
# up-dependencies-only:
# 	test -f .env || touch .env
# 	docker-compose -f docker-compose.dev.yml up --force-recreate db

.PHONY: install
update: install migrate ;

.PHONY: update
update: install migrate;
