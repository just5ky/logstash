# logstash
Docker container with opensearch output plugin.

<div align="center">

![](https://www.pinclipart.com/picdir/big/396-3967631_logstash-elastic-logstash-logo-clipart.png)

![GitHub repo size](https://img.shields.io/github/repo-size/just5ky/logstash?label=Repo%20Size&logo=github)
![Docker Build](https://github.com/just5ky/logstash/workflows/Docker/badge.svg) 
![Docker Pulls](https://img.shields.io/docker/pulls/justsky/logstash)
![Docker Size](https://img.shields.io/docker/image-size/justsky/logstash)

</div>

#### Docker compose
```yml
version: "3.9"
services:
    logstash
        container_name: logstash
        restart: unless-stopped
        image: justsky/logstash
        ports:
            - "5141:5141" #Filebeat
        volumes:
            - $DOCKERDIR/logstash/patterns:/usr/share/logstash/patterns/
            - $DOCKERDIR/logstash/conf.d:/usr/share/logstash/conf.d/
```