# Use a base image with Tomcat
FROM tomcat:9.0

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file into the Tomcat webapps directory
COPY target/addressbook-2.0.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8181

# Start Tomcat
CMD ["catalina.sh", "run"]

