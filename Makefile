.PHONY: help build up down logs ps test in start install
.DEFAULT_GOAL := help

start: ## 本番用サーバー起動
	docker compose exec app yarn start -p 4000

up: ## 開発用サーバー起動
	docker compose up -d

install: ## パッケージ導入
	docker compose run --rm app yarn --frozen-lockfile

build: ## ビルド
	docker compose exec app yarn build

in: ## Appのコンテナに入る
	docker compose exec app sh

lint: ## リンター
	docker compose exec app yarn lint

down: ## Do docker compose down
	docker compose down

logs: ## Tail docker compose logs
	docker compose logs -f

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
