SERVICE_NAME=go
APP_CONTAINER=go-app
DB_CONTAINER=go-app-db

all: build mod_tidy up ps
reset: down prune build mod_tidy up ps 

# 未使用のリソースを削除
prune:
	docker system prune -f
build:
	docker-compose build
up:
	docker-compose up -d
ps:
	docker-compose ps
down:
	docker-compose down -v
login_app:
	docker exec -it ${APP_CONTAINER} /bin/sh
login_db:
	docker exec -it ${DB_CONTAINER} psql -U postgres -d postgres

mod_tidy:
	docker-compose run --rm ${SERVICE_NAME} go mod tidy