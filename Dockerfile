FROM maven:3.8.3-openjdk-11

WORKDIR /app

COPY pom.xml .

COPY src/ ./src/
COPY target/ ./target

RUN mvn package

CMD ["java", "-jar", "/app/target/my-app-1.0-SNAPSHOT.jar"]
