FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY target/spring-boot-rest-example-0.0.1-SNAPSHOT.jar ./

EXPOSE 8080
EXPOSE 5005/tcp
EXPOSE 5005/udp
CMD ["java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005", "-jar", "spring-boot-rest-example-0.0.1-SNAPSHOT.jar"]