CFILE=srcs/docker-compose.yml
COMPOSE=docker-compose -f $(CFILE)

all: up 

up:
	$(COMPOSE) up

upd: 
	$(COMPOSE) up -d

build: 
	$(COMPOSE) build

down: 
	$(COMPOSE) down

ps: 
	$(COMPOSE) ps

re: 
	down build up

clean:
	docker container prune -f
	docker volume prune -f
	docker network prune -f

fclean: clean
	docker image prune -f	

.PHONY: down build up ps clean fclean