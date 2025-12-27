# Spring Boot Docker Demo 🚀

This project is a hands-on guide to containerizing a Java Spring Boot application. It covers the entire workflow from writing code to running a containerized environment.

## 📌 Key Features
- **REST API:** Simple endpoints built with Spring Boot.
- **Dockerization:** Custom `Dockerfile` using the `eclipse-temurin` (Java 17) base image.
- **Optimized Build:** Best practices for `WORKDIR`, `COPY`, and `ENTRYPOINT`.
- **Port Mapping:** Guide on how to expose container ports to the host machine.

## 🛠️ Technology Stack
- **Java 17**
- **Spring Boot 4.x**
- **Maven**
- **Docker**

## ⚙️ Configuration (Required)
Before building the image, please update the **Dockerfile** in the root directory:
1. Open `Dockerfile`.
2. Update the `LABEL maintainer` field with your own name and email.
3. When building/tagging, replace `muralic312` with your own **Docker Hub username**.

## 🚀 How to Run Locally

### 1. Clone the repository
```bash
git clone https://github.com/your-username/springboot-docker-demo.git
```
### 2. Build the JAR file
Run this command to compile the Java code and generate the JAR file:
```bash
mvn clean package
```

### 3. Build the Docker Image
Build the "box" for your application (don't forget the dot at the end!):
```bash
docker build -t your-username/springboot-docker-demo .
```

### 4. Run the Container
Start the application and map it to your computer's port 8080:
```bash
docker run -p 8080:8080 your-username/springboot-docker-demo
```

The application will be available at: `http://localhost:8080/docker`
