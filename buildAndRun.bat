@echo off
call mvn clean package
call docker build -t ma.emsi/tp2 .
call docker rm -f tp2
call docker run -d -p 9080:9080 -p 9443:9443 --name tp2 ma.emsi/tp2