FROM centos:latest

MAINTAINER vamsibyramala@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN yum install tar -y
RUN yum install wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.73/bin/apache-tomcat-8.5.73.tar.gz
RUN tar -xzvf apache-tomcat-8.5.73.tar.gz
RUN mv apache-tomcat-8.5.73/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

ADD webapp/target/webapp.war /opt/tomcat/webapps

EXPOSE 8085

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
