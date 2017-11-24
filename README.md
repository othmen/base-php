# About this Repo

[![Build Status](https://travis-ci.org/wodby/base-php.svg?branch=master)](https://travis-ci.org/wodby/base-php)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/base-php.svg)](https://hub.docker.com/r/wodby/base-php)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/base-php.svg)](https://hub.docker.com/r/wodby/base-php)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/base-php.svg)](https://microbadger.com/images/wodby/base-php)
[![Wodby Slack](http://slack.wodby.com/badge.svg)](http://slack.wodby.com)

This repository is a fork of https://github.com/docker-library/php with a few changes:

* Only fpm alpine-based images
* All images are based on latest stable alpine version ([wodby/alpine](https://github.com/wodby/alpine))
* Built with libressl instead of openssl
* Additional versions of images with --enable-debug

We manually perform changes from https://github.com/docker-library/php updates

## Docker Images

* All images are based on Alpine Linux
* Base image: [wodby/alpine](https://github.com/wodby/alpine)
* [Travis CI builds](https://travis-ci.org/wodby/base-php) 
* [Docker Hub](https://hub.docker.com/r/wodby/base-php)

| Image tag (Dockerfile)                                                          | PHP    | Alpine |
| ------------------------------------------------------------------------------- | ------ | ------ |
| [7.1.11 (latest)](https://github.com/wodby/base-php/tree/master/7.1/Dockerfile) | 7.1.11 | 3.6    |
| [7.0.25](https://github.com/wodby/base-php/tree/master/7.0/Dockerfile)          | 7.0.25 | 3.6    |
| [5.6.32](https://github.com/wodby/base-php/tree/master/5.6/Dockerfile)          | 5.6.32 | 3.6    |
| [7.1.11-debug](https://github.com/wodby/base-php/tree/master/7.1/Dockerfile)    | 7.1.11 | 3.6    |
| [7.0.25-debug](https://github.com/wodby/base-php/tree/master/7.0/Dockerfile)    | 7.0.25 | 3.6    |
| [5.6.32-debug](https://github.com/wodby/base-php/tree/master/5.6/Dockerfile)    | 5.6.32 | 3.6    |

> Images with -debug tag run php compiled with --enable-debug flag
