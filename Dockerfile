FROM tomcat

ADD sample.war /usr/local/tomcat/webapps/

EXPOSE 8081
