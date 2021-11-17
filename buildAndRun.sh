#!/bin/sh
mvn clean package && docker build -t ma.emsi/tp2 .
docker rm -f tp2 || true && docker run -d -p 9080:9080 -p 9443:9443 --name tp2 ma.emsi/tp2