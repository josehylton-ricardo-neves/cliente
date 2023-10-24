FROM openjdk:16-jdk-buster
USER root
ADD apache-tomcat-9.0.80.tar.gz /opt/
RUN mv /opt/apache-tomcat-9.0.80 /opt/tomcat
RUN chmod 777 -R /opt/tomcat

COPY ./build/cliente.war /opt/tomcat/webapps/

EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"]