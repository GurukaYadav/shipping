FROM openjdk:8-jdk-alpine
RUN adduser -D roboshop
RUN mkdir /app
WORKDIR /app
COPY shipping.jar .
chown roboshop /app
USER roboshop
ENTRYPOINT ["java", "-jar", "shipping.jar"]
