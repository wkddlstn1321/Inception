NAME		= -f ./srcs/docker-compose.yml
MARIA_DATA	= /home/insjang/data/mariadb_volume
WORD_DATA	= /home/insjang/data/wordngin_volume

all	:
	sudo mkdir -p $(MARIA_DATA)
	sudo mkdir -p $(WORD_DATA)
	docker-compose $(NAME) up --build -d

clean	:
	docker-compose $(NAME) down

fclean	: clean
	docker system prune -a
	sudo rm -rf /home/insjang/data
	docker volume rm srcs_db
	docker volume rm srcs_wp

re :
	make fclean
	make all

down : clean

up	:
	docker-compose $(NAME) up --build -d

.PHONY	:	all clean fclean re down up

# start stop down(del all) up