FROM openjdk:11-jre-slim
#FROM ubi8/openjdk-11
RUN mkdir /app
WORKDIR /app

ADD ./build/libs/grpc-square-service.jar  /app/app.jar

EXPOSE 6565
ENTRYPOINT ["java", "-jar", "app.jar"]
