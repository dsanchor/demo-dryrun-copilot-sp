# Use the official image as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the image to /app
WORKDIR /app

# Copy the jar file into the image
COPY ./target/demo-dryrun-sp-*.jar /app/myapp.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file 
ENTRYPOINT ["java","-jar","/app/myapp.jar"]