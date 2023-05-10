# Use the OpenJDK 17 as the base image
FROM openjdk:17

# Copy the Eureka server JAR file to the container
COPY ./target/eurekaServer-0.0.1-SNAPSHOT.jar  ./

# Set the working directory to the root of the container
WORKDIR ./

# Expose port 8761 for the Eureka server
EXPOSE 8761

# Set the entrypoint for the container to run the JAR file
ENTRYPOINT ["java", "-jar"]

# Set the default command to run the Eureka server JAR file
CMD ["eurekaServer-0.0.1-SNAPSHOT.jar"]