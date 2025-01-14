# Utiliser l'image officielle OpenJDK comme base
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR généré dans l'image Docker
COPY target/*.jar app.jar

# Exposer le port sur lequel l'application sera accessible
EXPOSE 8080

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "app.jar"]

