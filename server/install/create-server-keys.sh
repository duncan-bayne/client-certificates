#!/bin/bash

set -e

openssl genrsa -des3 -out server.key 1024
openssl req -new -key server.key -out server.csr
openssl rsa -in server.key -out server.key
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
