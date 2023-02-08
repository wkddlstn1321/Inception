NAME	= -f ./srcs/docker-compose.yml

all	:
		docker compose $(NAME) up

clean	:
		docker compose $(NAME) down

fclean	:	clean
		docker rm mariadb
		docker rmi inception-mariadb
		docker volume rm db

re :
		docker compose $(NAME) up --build

.PHONY	:	all clean fclean re

# start stop down(del all) up