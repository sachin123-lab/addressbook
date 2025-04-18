# Use an official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java application jar file to the container
COPY /var/lib/jenkins/workspace/docker-pipline/target/addressbook-2.0.war /app/addressbook-2.0.war

# Command to run the Java application
CMD ["java", "-jar", "addressbook-2.0.war"]
