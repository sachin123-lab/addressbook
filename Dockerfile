# Use a Tomcat base image
FROM tomcat:10.1-jdk17

# Copy the WAR file into the Tomcat webapps directory
COPY /var/lib/jenkins/workspace/docker-pipline/target/addressbook-2.0.war /usr/local/tomcat/webapps/

# Expose the new port
EXPOSE 8181

# Update the Tomcat server configuration to use port 9000
RUN sed -i 's/port="8080"/port="8181"/g' /usr/local/tomcat/conf/server.xml
