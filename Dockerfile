FROM maven:3.9.6-eclipse-temurin-17 as builder
WORKDIR /app
COPY . .
RUN mvn clean package

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=builder /target/*.jar /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]