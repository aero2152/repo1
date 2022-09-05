Hi This is docker file or image
FROM centos 7
LABEL maintainer="swamy.bheemari@gmail.com"
ARG USERNAME=tomuser
ARG TOM_HOME=/opt/apache-tomcat-9.0.65
ARG WAR=