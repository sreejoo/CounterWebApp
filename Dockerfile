FROM tomcat:8.0.20-jre8

RUN mkdir /usr/local/tomcat/webapps/myapp

ADD target/CounterWebApp.war /usr/local/tomcat/webapps/myapp/

EXPOSE 8081

