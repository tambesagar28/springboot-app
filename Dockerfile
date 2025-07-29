FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package && cp target/*.jar app.jar

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=builder /app/app.jar /app/app.jar
EXPOSE 3002
CMD ["java", "-jar", "app.jar"]