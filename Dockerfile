# Use OpenJDK 17 base image
#FROM openjdk:17-jdk-slim
# Use Amazon Corretto (AWS-hosted JDK 17 image)
FROM amazoncorretto:17-alpine

# Set working directory inside container
WORKDIR /app

# Copy jar file into the container
COPY ./target/demo-0.0.1-SNAPSHOT.jar /app

# Expose Spring Boot default port
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]