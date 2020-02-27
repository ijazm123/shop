FROM tomcat
RUN apt update -y
RUN apt install maven -y
RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD ./sm-shop/target/ROOT.war /usr/local/tomcat/webapps/
ENV JAVA_OPTS="-Xmx1024m"
CMD ["catalina.sh", "run"]
