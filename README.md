## Docker image for Jenkins CI

* [docker](http://www.docker.io/)
* [jenkins](http://jenkins-ci.org/)

### Installation

```sh
$ sudo docker pull lzhang/jenkins
```

### Usage

Run the container:

```sh
$ JENKINS_CONTAINER=$(sudo docker run -h 'localhost' -p 8080:8080 -d lzhang/docker)
```

Jenkins will be available on the host machine at port 8080. Specify the 
hostname to avoid a jenkins error on startup.

Commit the container if you want to save the changes you've made in jenkins:

```sh
$ sudo docker commit $JENKINS_CONTAINER lzhang/jenkins
```

Shutting down the container:

```sh
$ sudo docker kill $JENKINS_CONTAINER
```
