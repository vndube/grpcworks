FROM openjdk:11-jre-slim
RUN mkdir /app
WORKDIR /app

ADD ./build/libs/aggregator-service.jar /app/app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
