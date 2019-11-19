.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

.PHONY: up
up: down build ## Create and start containers
	docker-compose up -d

.PHONY: down
down: ## Stop and remove containers, networks, images, and volumes
	docker-compose down --remove-orphans

.PHONY: logs
logs: ## View output from containers
	docker-compose logs

.PHONY: tail
tail: ## Tail output from containers
	docker-compose logs -f

.PHONY: build
build: ## Build or rebuild services
	docker-compose build

.PHONY: top
top: ## Display the running processes
	docker-compose top

.PHONY: ps
ps: ## List containers
	docker-compose ps
