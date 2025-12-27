# Use the Java 17 runtime as the base image
# 1. THE FOUNDATION: Pulls a "mini-computer" with Java 17 already installed.
FROM eclipse-temurin:17

# 2. THE OWNER: Just metadata to show who is responsible for this image.
LABEL maintainer="muralic312@gmail.com"

# 3. THE FOLDER: Like 'mkdir' + 'cd'. All following actions happen in /app.
WORKDIR /app

# 4. THE PAYLOAD: Move your local built file (target/...) INTO the container (/app/...).
# Tip: Ensure you've run 'mvn package' or 'gradle build' first!
COPY target/docker-0.0.1-SNAPSHOT.jar /app/springboot-docker-demo.jar

# 5. THE IGNITION: The actual command that starts your app when the container boots.
# Run the JAR file.
# Format: ["command", "argument1", "argument2"]
ENTRYPOINT ["java", "-jar", "springboot-docker-demo.jar"]