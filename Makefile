NAME	= docker

$(NAME)	:
		docker-compose up

clean	:
		docker images rm

fclean	:	clean
		docker rm mariadb
		docker rmi inception-mariadb
		docker volume rm db

re :
		make fclean
		make

.PHONY	:	all clean fclean re