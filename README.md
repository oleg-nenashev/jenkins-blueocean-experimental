# Experimental packages of Jenkins BlueOcean

<aside class="warning">
<b>WARNING:</b> This is a temporary Java 11 image for BlueOcean.
  The official one will be created as a part of https://issues.jenkins-ci.org/browse/JENKINS-55101
  <br/>
</aside>

Contains a Dockerfile for a Jenkins + BlueOcean + Pipeline bundle.
For Java 11 it also includes all pathes needed to run it out of the box. 

## Deployment destinations

* Automatic build: https://hub.docker.com/r/jenkins4eval/blueocean-platform-support
  * Java 11 version: `jenkins4eval/blueocean-platform-support:latest-jdk11`
* Manual deployment: `jenkins/jenkins-experimental:blueocean-jdk11`
  * Happens on irregular basis
  
## Usage

You can run the image simply as...

```
  docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins-experimental:blueocean-jdk11
```

See [this blogpost](https://jenkins.io/blog/2018/06/17/running-jenkins-with-java10-11/) for more info

