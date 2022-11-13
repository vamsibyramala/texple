FROM tomcat
CMD /usr/local/tomcat/bin/catalina.sh run
ADD sample.war /usr/local/tomcat/webapps/

EXPOSE 8081
