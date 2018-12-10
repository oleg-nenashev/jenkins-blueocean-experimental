#
# Before building this Dockerfile, BlueOcean needs to be built locally using Maven
# You can build everything needed and this Dockerfile by invoking `bin/build-in-docker.sh -m`
#

# Should be kept in sync with jenkins.properties of pom.xml
# Patch version is not to be considered, we prefer to base the image off the latest LTS of the line
# and keep the dependency on the baseline in pom.xml
FROM jenkins/jenkins:jdk11

USER root
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER jenkins
