# Use a base image with JDK 17
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application jar to the container
COPY target/spring-boot-docker-1.0-SNAPSHOT.jar app.jar

# Expose the application's port 
EXPOSE 8080

# Set the default command to run your Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]

