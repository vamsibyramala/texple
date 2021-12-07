From tomcat:8-jre8

MAINTAINER vamsibyramala@gmail.com
RUN yum install jre -y

ADD webapp/target/webapp.war /usr/local/tomcat/webapps/
