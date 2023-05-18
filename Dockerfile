FROM tomcat:9.0-jdk11-openjdk-slim

RUN rm -rf /usr/local/tomcat/webapps/*

COPY WebContent/index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp
COPY WebContent/home.jsp /usr/local/tomcat/webapps/ROOT/home.jsp
COPY WebContent/WEB-INF/web.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/web.xml
COPY WebContent/META-INF/MANIFEST.MF /usr/local/tomcat/webapps/ROOT/META-INF/MANIFEST.MF
COPY src/com/srk/dao/StudentDAO.java /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/com/srk/dao/StudentDAO.java
COPY src/vo/Student.java /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/vo/Student.java
COPY src/com/srk/servlet/DeleteStudent.java /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/com/srk/servlet/DeleteStudent.java
COPY src/com/srk/servlet/EditStudent.java /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/com/srk/servlet/EditStudent.java
COPY src/com/srk/servlet/RegistrationController.java /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/com/srk/servlet/RegistrationController.java
COPY src/com/srk/servlet/SaveEditedStudent.java /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/com/srk/servlet/SaveEditedStudent.java
COPY src/com/srk/servlet/ViewStudents.java /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/com/srk/servlet/ViewStudents.java

EXPOSE 8080
