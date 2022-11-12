FROM tomcat:8.5-jdk11-openjdk

MAINTAINER vamsibyramala@gmail.com

ADD sample.war /usr/local/tomcat/webapps/

EXPOSE 8081
