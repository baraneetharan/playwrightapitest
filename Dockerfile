FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp

# Build the application
COPY . .
RUN mvn clean package -DskipTests

# Create a package
COPY target/*.jar app.jar

# Set the entrypoint
ENTRYPOINT ["java","-jar","/app.jar"]

# Expose port 8080
EXPOSE 8080
