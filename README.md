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
$ docker build -t micro-blog .
```

## Start

Start web server:
```
$ docker run -ti -p 3000:3000 -p 27017:27017 micro-blog

# test
$ curl -i http://localhost:3000/
```

Open [http://localhost:3000](http://localhost:3000) in your browsers.
