# playwrightapitest-0.0.1-SNAPSHOT.jar

FROM openjdk:17-jdk-slim AS builder

# Set the workdir to /app
WORKDIR /app

# Copy the pom.xml file into the build context
COPY . .

# Run the Maven build
RUN ./mvnw clean package -DskipTests

# Copy the built artifacts into the app directory
COPY target/*.jar .

# Expose port 8080
EXPOSE 8080

# Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
