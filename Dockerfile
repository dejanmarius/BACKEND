# Utilizăm o imagine de bază cu OpenJDK 23
FROM openjdk:23-jdk-slim

# Setăm directorul de lucru în container
WORKDIR /app

# Copiem fișierul JAR generat în container
COPY target/your-application-name.jar app.jar

# Expunem portul pe care rulează aplicația
EXPOSE 8080

# Comanda pentru a rula aplicația
ENTRYPOINT ["java", "-jar", "app.jar"]