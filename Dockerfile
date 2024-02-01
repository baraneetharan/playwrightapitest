# playwrightapitest-0.0.1-SNAPSHOT.jar

# Build stage
#
FROM openjdk:17-jdk-slim-buster
COPY . .
RUN mvn clean package -Pprod -DskipTests
FROM openjdk:17-jdk-slim-buster
WORKDIR /app

COPY app/build/lib/* build/lib/

COPY app/build/libs/playwrightapitest-0.0.1-SNAPSHOT.jar build/

WORKDIR /app/build
ENTRYPOINT java -jar playwrightapitest-0.0.1-SNAPSHOT.jar
EXPOSE 8080
