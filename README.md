> JSPs should be avoided if possible, there are several known limitations when using them with embedded servlet containers.
> An executable jar will not work because of a hard coded file pattern in Tomcat.

# JSPs in Spring Boot: A Simple Guide
Place your JSPs in the standard web container directory: `src/main/resources/META-INF/resources/WEB-INF/jsp`. 
This location is mandated by the JSR-245 JavaServer Pages 2.1 Specification, allowing embedded servers like Tomcat to properly find and render dynamic content from the classpath. 
This bypasses the issue of Spring Boot treating JSPs as static resources. You also need to add the `tomcat-embed-jasper` and `JSTL` dependencies to your `pom.xml` and configure the 
view `prefix/suffix` in `application.properties` to ensure correct rendering. This method is the reliable standard for serving JSPs in a Spring Boot JAR.

## Source
[DZone Spring Boot With JSPs in Executable Jars](https://dzone.com/articles/spring-boot-with-jsps-in-executable-jars-1)
