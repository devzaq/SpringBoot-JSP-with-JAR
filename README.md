> JSPs should be avoided if possible, there are several known limitations when using them with embedded servlet containers.
> An executable jar will not work because of a hard coded file pattern in Tomcat.

# JSPs in Spring Boot: A Simple Guide
Place your JSPs in the standard web container directory: `src/main/resources/META-INF/resources/WEB-INF/jsp`. 
This location is mandated by the JSR-245 JavaServer Pages 2.1 Specification, allowing embedded servers like Tomcat to properly find and render dynamic content from the classpath. 
This bypasses the issue of Spring Boot treating JSPs as static resources. You also need to add the `tomcat-embed-jasper` and `JSTL` dependencies to your `pom.xml` and configure the 
view `prefix/suffix` in `application.properties` to ensure correct rendering. This method is the reliable standard for serving JSPs in a Spring Boot JAR.

## Source
[DZone Spring Boot With JSPs in Executable Jars](https://dzone.com/articles/spring-boot-with-jsps-in-executable-jars-1)

## **( IntelliJ idea issue )** Spring boot run configuration does not find resources in META-INF 

>The problem is that `Jasper` is `marked` as `provided` in the `pom` so it's **not on the classpath**. It causes Spring Boot to go down a code path where various JSP-related bits and pieces are not enabled. You can avoid it by **removing** `<scope>provided</scope>` from your `pom`as it's only necessary when building a war file that will be deployed to a servlet container.

## Integrating With Bootstrap and jQuery Using Web Jars
#### [1. Spring Boot: Integrating With Bootstrap and jQuery Using Web Jars (DZone)](https://dzone.com/articles/spring-boot-integrating-with-bootstrap-and-jquery)
#### [2. Spring Boot - Integrating with Bootstrap & jQuery using Web Jars (in28minutes)](https://www.springboottutorial.com/spring-boot-with-jquery-and-bootstrap-web-jars)

## Accessing username from the session 

* @SessionAttribute("username") String username
* @ModelAttribute("username") String username,
* ModelMap model => (String) model.get("username")
