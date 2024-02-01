# playwrightapitest-0.0.1-SNAPSHOT.jar

FROM openjdk:17-jdk-slim AS build

COPY pom.xml mvnw ./
COPY .mvn .mvn
RUN mvn spring-boot:run -DskipTests

COPY src src
RUN mvn package

FROM openjdk:17-jdk-slim
WORKDIR demo
COPY --from=build target/*.jar demo.jar
EXPOSE 8080
CMD ["java", "-jar", "demo.jar"]
