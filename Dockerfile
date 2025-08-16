# Use an official JDK runtime as base image
FROM eclipse-temurin:11-jdk

# Maintainer info
LABEL maintainer="aravinddilip94 <aravinddilip@gmail.com>"

# Set working directory inside container
WORKDIR /app

# Copy built jar from Maven target folder to container
COPY target/hello-world-java-1.0-SNAPSHOT.jar app.jar

# Run the jar when container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
