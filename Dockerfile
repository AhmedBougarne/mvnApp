From openjdk :8
EXPOSE 8080
ADD target/mvnApp.jar mvnApp.jar
ENTRYPOINT ["java","-jar","/mvnApp.jar"]
