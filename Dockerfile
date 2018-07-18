# Pull base image 
FROM tomcat:8.0.20-jre8
VOLUME /tmp
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
ADD target/CounterWebApp.war /usr/local/tomcat/webapps/
EXPOSE 8080

