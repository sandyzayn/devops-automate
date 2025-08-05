FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the Maven wrapper and pom.xml
COPY mvnw .
COPY mvnw.cmd .
COPY .mvn .mvn
COPY pom.xml .

# Copy the application source code
COPY src ./src

# Install Maven dependencies
RUN ./mvnw dependency:go-offline

# Package the application
RUN ./mvnw package -DskipTests

# Set the entry point for the application
ENTRYPOINT ["java", "-jar", "target/*.jar"]