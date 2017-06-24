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
docker run -d --rm -p 27017:27017 -v ~/Apps/docker_data/mongodb:/data/db cikupin/mongodb-alpine:latest
```

#### Mounting volume

Data in container will be deleted automatically when you remove container. In order to keep your data from container although you had deleted your container, you need to mount your folder in your container to your local machine. That's why I put **-v ~/Apps/docker_data/mongodb:/data/db** when I run my container.

**-v ~/Apps/docker_data/mongodb:/data/db** means that you mount/sync **/data/db** folder in your container to **~/Apps/docker_data/mongodb** into your local machine.

When you delete your container, your data still exists in your local machine. You can reuse your data for another container my mounting them. So that you don't need to worry about losing your data.

MongoDB GUI interface
---------------------

To use mongoDB GUI browser, you can use [Robomongo](https://robomongo.org/).
