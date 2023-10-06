FROM tomcat:9.0-jdk11-openjdk-slim
RUN rm -rf /usr/local/tomcat/webapps/*
COPY WebContent/index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp
COPY WebContent/home.jsp /usr/local/tomcat/webapps/ROOT/home.jsp
COPY WebContent/WEB-INF/web.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/web.xml
EXPOSE 8086
