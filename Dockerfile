# Start with a base image containing Java runtime
FROM openjdk:11

# Add Author info
LABEL maintainer="fails9503@gmail.com"

# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
#ARG JAR_FILE=build/libs/spring-mvc-0.0.1-SNAPSHOT.jar
ARG JAR_FILE=cicd-demo-0.0.1-SNAPSHOT-plain.jar

# Add the application's jar to the container
ADD ${JAR_FILE} to-do-springboot.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/to-do-springboot.jar"]