From openjdk :8
EXPOSE 8080
ADD target/mvnApp-1.0-SNAPSHOT.jar mvnApp-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/mvnApp-1.0-SNAPSHOT.jar"]
