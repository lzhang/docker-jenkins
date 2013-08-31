FROM ubuntu
MAINTAINER Lewis Zhang "lewiszhang@gmail.com"

RUN apt-get install -y wget
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
RUN apt-get update
RUN apt-get install jenkins -y
RUN service jenkins stop

CMD java -jar /usr/share/jenkins/jenkins.war
EXPOSE 8080
