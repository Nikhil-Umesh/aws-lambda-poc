FROM openjdk:14-alpine
COPY target/aws-lambda-poc-*.jar aws-lambda-poc.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "aws-lambda-poc.jar"]