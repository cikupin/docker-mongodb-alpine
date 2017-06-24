Mongodb Docker Images
========================

Mongodb docker images based on alpine linux.

Table of contents
-----------------
* [Installation](#installation)
* [Usage](#usage)

Installation
------------

To use this image, you may choose one of these steps: **build image from Dockerfile** or **pull docker image from docker hub**.

#### 1. Build image from Docker file

First, clone Dockerfile from this github repository:

```
https://github.com/cikupin/docker-mongodb-alpine
```

Then build the image by using this command:

```
docker build -t cikupin/mongodb-alpine:latest .
```

#### 2. Pull docker image from docker hub

If you don't want to build the image manually, you can pull it from my docker hub repository.

```
docker pull cikupin/mongodb-alpine
```

Usage
-----

To run this images, type this command:

```
docker run -d --rm -p 27017:27017 cikupin/mongodb-alpine:latest
```

To use mongoDB GUI browser, you can use [Robomongo](https://robomongo.org/).
