# About this Repo

[![Build Status](https://travis-ci.org/wodby/base-php.svg?branch=master)](https://travis-ci.org/wodby/base-php)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/base-php.svg)](https://hub.docker.com/r/wodby/base-php)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/base-php.svg)](https://hub.docker.com/r/wodby/base-php)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/base-php.svg)](https://microbadger.com/images/wodby/base-php)
[![Wodby Slack](http://slack.wodby.com/badge.svg)](http://slack.wodby.com)

This repository is a fork of https://github.com/docker-library/php with a few changes:

* We build only FPM alpine-based variants
* Base image is Alpine 3.6+
* Built with libressl instead of openssl
* Additional debug variants of images with --enable-debug and non-stripped bins

## Docker Images

* All images are based on Alpine Linux
* Base image: [wodby/alpine](https://github.com/wodby/alpine)
* [Travis CI builds](https://travis-ci.org/wodby/base-php) 
* [Docker Hub](https://hub.docker.com/r/wodby/base-php)

[_(Dockerfile 7.2)_]: https://github.com/wodby/base-php/tree/master/7.2/alpine3.7/fpm/Dockerfile.wodby
[_(Dockerfile 7.1)_]: https://github.com/wodby/base-php/tree/master/7.1/alpine3.6/fpm/Dockerfile.wodby
[_(Dockerfile 7.0)_]: https://github.com/wodby/base-php/tree/master/7.0/alpine3.6/fpm/Dockerfile.wodby
[_(Dockerfile 5.6)_]: https://github.com/wodby/base-php/tree/master/5.6/alpine3.6/fpm/Dockerfile.wodby

| Supported tags and respective `Dockerfile` links | PHP    | Alpine |
| ------------------------------------------------ | ------ | ------ |
| `7.2.1`, `latest` [_(Dockerfile 7.2)_]           | 7.2.1  | 3.7    |
| `7.1.13` [_(Dockerfile 7.1)_]                    | 7.1.13 | 3.6    |
| `7.0.27` [_(Dockerfile 7.0)_]                    | 7.0.27 | 3.6    |
| `5.6.33` [_(Dockerfile 5.6)_]                    | 5.6.33 | 3.6    |
| `7.2.1-debug` [_(Dockerfile 7.2)_]               | 7.2.1  | 3.7    |
| `7.1.13-debug` [_(Dockerfile 7.1)_]              | 7.1.13 | 3.6    |
| `7.0.27-debug` [_(Dockerfile 7.0)_]              | 7.0.27 | 3.6    |
| `5.6.33-debug` [_(Dockerfile 5.6)_]              | 5.6.33 | 3.6    |
