#!/bin/sh
set -e

certDir=/tmp/ssl
mkdir $certDir
cd $certDir

openssl genrsa -out server.key 4096
openssl req -new \
	-key server.key \
	-out server.csr \
	-subj "/C=HK/ST=/L=/O=Nginx/CN=Nginx"
openssl x509 -req \
	-days 3650 \
	-in server.csr \
	-signkey server.key \
	-out server.crt
cat server.key server.crt >>server.pem
