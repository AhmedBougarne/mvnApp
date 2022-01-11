From openjdk :8
EXPOSE 8080
ADD mvnApp.jar mvnApp.jar
ENTRYPOINT ["java","-jar","/mvnApp.jar"]
