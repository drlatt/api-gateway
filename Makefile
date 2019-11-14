.PHONY: compose
up:
	docker-compose up -d

.PHONY: down
down:
	docker-compose down --remove-orphans

.PHONY: logs
logs:
	docker-compose logs

.PHONY: tail
tail:
	docker-compose logs -f

.PHONY: build
build:
	docker-compose build
