# Jenkins and Docker Demo Project

This project demonstrates how to deploy a Java application using Jenkins and Docker. It includes a sample application structure, Docker configuration, and Jenkins pipeline for continuous integration and deployment.

## Project Structure

```
jenkins-docker-demo
├── .mvn
├── src
│   ├── main
│   └── test
│       └── java
│           └── com
│               └── javatechie
├── .gitignore
├── Dockerfile
├── Jenkinsfile
├── README.md
├── deploymentservice.yaml
├── kubernetes-cd.hpi
├── mvnw
├── mvnw.cmd
└── pom.xml
```

## Getting Started

### Prerequisites

- Java 11 or higher
- Maven
- Docker
- Jenkins

### Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd jenkins-docker-demo
   ```

2. **Build the Application**
   Use the Maven wrapper to build the application:
   ```bash
   ./mvnw clean package
   ```

3. **Build the Docker Image**
   Build the Docker image using the provided Dockerfile:
   ```bash
   docker build -t jenkins-docker-demo .
   ```

4. **Run the Docker Container**
   Run the Docker container:
   ```bash
   docker run -p 8080:8080 jenkins-docker-demo
   ```

5. **Set Up Jenkins**
   - Install the required plugins, including the Kubernetes Continuous Deployment plugin.
   - Create a new pipeline job and use the provided `Jenkinsfile` for the pipeline configuration.

### Deployment

The application can be deployed to a Kubernetes cluster using the `deploymentservice.yaml` file. Ensure that your Kubernetes context is set correctly and apply the deployment configuration:
```bash
kubectl apply -f deploymentservice.yaml
```

## Testing

Unit tests are located in the `src/test/java/com/javatechie` directory. You can run the tests using:
```bash
./mvnw test
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.