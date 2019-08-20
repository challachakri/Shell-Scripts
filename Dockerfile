FROM centos
MAINTAINER madhavdocker453 <madhavguvvuala@gmail.com>
RUN yum update -y && yum install wget unzip  git -y \
&& cd /opt && wget http://mithuntechnologies.com/jdk-8u211-linux-x64.rpm && yum install jdk-8u211-linux-x64.rpm -y \
&& wget http://apachemirror.wuchna.com/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.zip && unzip apache-maven-3.6.1-bin.zip \
&& git clone https://github.com/madhav411/maven-web-application.git
ENV JAVA_HOME=/usr/java/jdk1.8.0_211-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
ENV M2_HOME=/opt/apache-maven-3.6.1
ENV PATH=$PATH:$M2_HOME/bin
ENV CATALINA_HOME=/opt/apache-tomcat-8.5.43
ENV PATH=$PATH:$CATALINA_HOME/bin
RUN cd /opt/maven-web-application && mvn clean package \
&& cd /opt && wget http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.43/bin/apache-tomcat-8.5.43.zip && unzip apache-tomcat-8.5.43.zip \
&& cd /opt/apache-tomcat-8.5.43/bin && chmod u+x *.sh \
&& cp /opt/maven-web-application/target/*.war /opt/apache-tomcat-8.5.43/webapps
WORKDIR $CATALINA_HOME
ENTRYPOINT ["sh"]
CMD ["catalina.sh","run"]
