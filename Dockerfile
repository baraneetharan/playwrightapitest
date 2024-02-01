# playwrightapitest-0.0.1-SNAPSHOT.jar

FROM openjdk:17-jdk-slim AS build

COPY pom.xml mvnw ./
COPY .mvn .mvn
RUN cd build && ./mvnw dependency:resolve

COPY src src
RUN cd build && ./mvnw package

FROM openjdk:17-jdk-slim
WORKDIR demo
COPY --from=build target/*.jar demo.jar
EXPOSE 8080
CMD ["java", "-jar", "demo.jar"]
