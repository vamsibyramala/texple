From tomcat:8.0-alpine

MAINTAINER vamsibyramala@gmail.com

ADD sample.war /usr/local/tomcat/webapps/

EXPOSE 8081

RUN sh catalina.sh
