#!/bin/bash

mkdir /etc/nginx/certificate
cd /etc/nginx/certificate
openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx-certificate.crt -keyout nginx.key -subj "/C=KR/ST=Seoul/L=Gaepo/O=42/CN=insjang.42.fr";

exec "$@"
