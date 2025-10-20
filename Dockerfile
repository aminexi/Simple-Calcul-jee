FROM tomcat:10.1-jdk17

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file
COPY Calcul-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose container port
EXPOSE 8090

# Start Tomcat
CMD ["catalina.sh", "run"]
