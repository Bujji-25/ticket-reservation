FROM eclipse-temurin:8-jre

WORKDIR /app

COPY target/TrainBook.war app.war
COPY target/webapp-runner.jar webapp-runner.jar

EXPOSE 8080

CMD ["java", "-jar", "webapp-runner.jar", "--port", "8080", "app.war"]
