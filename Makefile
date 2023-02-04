# VARS 
ROOT := github.com/kyledinh/postgres-dba
BUILD_DIR = ./build
OUTPUT_DIR = ./dist

## Current version of the project.
REPO_ROOT ?= $(shell pwd | xargs echo -n)
GITTAG ?= $(shell git describe --tags --always --dirty)
SEMVER ?= $(shell head -n 1 semver)

# TARGETS 
.PHONY: check dev-check env test check postgres setup test-api-fetch

check:
	@java --version
	@scala --version 
	@docker --version
	@sbt --version

dev-check:
	@echo "dev-check:"

docker-up:
	@open -a Docker

env:
	@echo "GITTAG: $(GITTAG)"
	@echo "SEMVER: $(SEMVER)"
	@echo "REPO_ROOT: $(REPO_ROOT)"

postgres-check:
	@docker exec -i postgres-db-1 psql example example -c "\d"
	@docker exec -i postgres-db-1 psql example example -c "select * from city"

postgres-down:
	@docker compose -f docker/postgres/docker-compose.yml down 

postgres-seed:
	@cat sql/init.sql | docker exec -i postgres-db-1 psql example example  

postgres-shell:
	@docker exec -it postgres-db-1 psql example example 

postgres-up:
	@docker compose -f docker/postgres/docker-compose.yml up -d

