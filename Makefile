CFILE=srcs/docker-compose.yml
COMPOSE=docker-compose -f $(CFILE)

all: up 

up: 
	$(COMPOSE) up -d

build: 
	$(COMPOSE) build

down: 
	$(COMPOSE) down

ps: 
	$(COMPOSE) ps

re: 
	down build up

.PHONY: down build up ps