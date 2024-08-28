# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the jar file into the container
COPY target/notes-0.0.1-SNAPSHOT.jar /app/notes-0.0.1-SNAPSHOT.jar

# Expose the port that the application will run on (Render sets this via the PORT env variable)
EXPOSE 8080

# Set the PORT environment variable (Render will overwrite this with the correct port)
ENV PORT=8080

# Run the jar file and bind to the PORT environment variable
ENTRYPOINT ["sh", "-c", "java -jar /app/notes-0.0.1-SNAPSHOT.jar --server.port=$PORT"]
