# micro-blog
The back end API for a simple micro-blogging service

## Pre-requisites

You must have [Docker](https://docker.com) installed.

## Download

Clone this repo:

```
$ git clone git@github.com:TIYDC/micro-blog.git
$ cd micro-blog

```

## Docker Setup

```
$ docker-compose build
```

## Start

Start web server:
```
$ docker-compose up

# test
$ curl -i http://localhost:3000/
```

## Access the running containers
List the containers
```
$ docker-compose ps
Name            Command    State             Ports           
----------------------------------------------------
microblog_backend_1    mongod      Up       0.0.0.0:27017->27017/tcp
microblog_frontend_1   npm start   Exit 1                            
```
access the backend
```
$ docker exec -it microblog_backend /bin/sh
```

Open [http://localhost:3000](http://localhost:3000) in your browsers.
