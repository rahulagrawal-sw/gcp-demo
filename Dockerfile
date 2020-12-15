FROM openjdk:11.0.6-slim
EXPOSE 9080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} gcpdemo-1.0.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /gcpdemo-1.0.jar"]