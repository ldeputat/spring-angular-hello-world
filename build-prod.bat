::@echo off
cd angular-frontend
call ng build --prod
cd ..
call mvn clean package -f spring-backend/pom.xml
