FROM ubuntu:latest AS base
COPY . .
RUN apt-get update
RUN apt-get install openjdk-17-jdk -y
RUN apt-get install maven -y
RUN mvn clean install
RUN ls -l target

FROM openjdk:17-slim
RUN mkdir -p /app
EXPOSE 8080
COPY --from=base target/*.jar /app/N.I.B.jar
ENTRYPOINT ["java", "-jar", "/app/N.I.B.jar"]
