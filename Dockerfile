FROM openjdk:8-jdk-alpine
RUN adduser -D roboshop
RUN mkdir /app
WORKDIR /app
COPY shipping.jar .
COPY run.sh /app
RUN chown roboshop:roboshop -R /app
USER roboshop
ENTRYPOINT ["sh","/app/run.sh"]
