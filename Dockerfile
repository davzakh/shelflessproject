# Tomcat Version 9
FROM tomcat:9.0

ENV JAVA_HOME /opt/java/openjdk

# Java Version 17
RUN apt-get update && \
    apt-get install -y openjdk-17-jre-headless && \
    ln -s /usr/lib/jvm/java-17-openjdk-amd64 /opt/java/openjdk

RUN rm -rf /usr/local/tomcat/webapps/*

# Copy War to the webapps folder
COPY Ecommerce_Project.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
