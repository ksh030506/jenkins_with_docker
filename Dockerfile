FROM jenkins/jenkins:jdk11

USER root 

RUN groupadd -f docker

RUN usermod -aG docker jenkins

COPY docker_install.sh /docker_install.sh

RUN chmod +x /docker_install.sh

RUN /docker_install.sh
