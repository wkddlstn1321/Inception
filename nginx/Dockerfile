FROM debian:buster

RUN apt update -y && apt upgrade -y && \
apt -y install nginx openssl vim

COPY ./conf/default /etc/nginx/sites-enabled/default
COPY ./tools/script.sh /var/www

EXPOSE 443

RUN chmod +x /var/www/script.sh

ENTRYPOINT [ "var/www/script.sh" ]

# 포그라운드 실행
CMD ["nginx", "-g", "daemon off;"]

#ENTRYPOINT ["bash"]

