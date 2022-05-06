#
#Build Jar file using maven
FROM maven:3.6.3-jdk-11 AS maven_build
#
RUN mkdir -p /workspace
WORKDIR /workspace
#Copy required files into workspace
COPY pom.xml /workspace
COPY src /workspace/src
#Execute maven build commands
RUN mvn clean
RUN mvn -B package --file pom.xml


#
#Build final image
FROM nginxdemos/hello
#Install JDK package to image
RUN apk add openjdk11
#Copy JAR file to current docker image
COPY --from=maven_build /workspace/target/BetVictorApp.jar BetVictorApp.jar
EXPOSE 9000
#Execute JAR file
ENTRYPOINT ["java", "-jar", "/BetVictorApp.jar"]