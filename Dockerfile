FROM centos 7
LABEL maintainer="swamy.bheemari@gmail.com"
ARG USERNAME=tomuser
ARG TOM_HOME=/opt/apache-tomcat-9.0.65
ARG WAR=https://github.com/aero2152/repo1/blob/master/Dockerfile
ARG GROUP=tomuser
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $USERNAME
RUN USERADD -u $UID -g $GID -o -s /bin/bash $USERNAME
RUN yum update -y && yum install wget -y && yum install java-1.8.0-openjdk  -y;
ADD apache-tomcat-9.0.65.tar.gz /opt/
RUN chown $USERNAME:$USERNAME $(TOM_HOME) -RUN
EXPOSE 8080
USER ${USERNAME}
CMD sh /opt/apache-tomcat-9.0.65/bin/catalina.sh run
