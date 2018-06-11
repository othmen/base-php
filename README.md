# About this Repo

[![Build Status](https://travis-ci.org/wodby/base-php.svg?branch=master)](https://travis-ci.org/wodby/base-php)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/base-php.svg)](https://hub.docker.com/r/wodby/base-php)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/base-php.svg)](https://hub.docker.com/r/wodby/base-php)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/base-php.svg)](https://microbadger.com/images/wodby/base-php)

This repository is a fork of https://github.com/docker-library/php with a few changes:

* We build only Alpine FPM variants
* Built with LibreSSL instead of OpenSSL
* Additional debug variants of images with --enable-debug and non-stripped bins
* Legacy PHP 5.3 variant

## Docker Images

* All images are based on Alpine Linux
* Base image: [wodby/alpine](https://github.com/wodby/alpine)
* [Travis CI builds](https://travis-ci.org/wodby/base-php) 
* [Docker Hub](https://hub.docker.com/r/wodby/base-php)

[_(Dockerfile 7.2)_]: https://github.com/wodby/base-php/tree/master/7.2/alpine3.7/fpm/Dockerfile.wodby
[_(Dockerfile 7.1)_]: https://github.com/wodby/base-php/tree/master/7.1/alpine3.7/fpm/Dockerfile.wodby
[_(Dockerfile 7.0)_]: https://github.com/wodby/base-php/tree/master/7.0/alpine3.7/fpm/Dockerfile.wodby
[_(Dockerfile 5.6)_]: https://github.com/wodby/base-php/tree/master/5.6/alpine3.7/fpm/Dockerfile.wodby
[_(Dockerfile 5.3)_]: https://github.com/wodby/base-php/tree/master/5.3/alpine3.4/fpm/Dockerfile.wodby

| Supported tags and respective `Dockerfile` links            | PHP    | Alpine |
| ----------------------------------------------------------- | ------ | ------ |
| `7.2.5`, `7.2`, `7`, `latest` [_(Dockerfile 7.2)_]          | 7.2.5  | 3.7    |
| `7.1.17`, `7.1` [_(Dockerfile 7.1)_]                        | 7.1.17 | 3.7    |
| `7.0.30`, `7.0` [_(Dockerfile 7.0)_]                        | 7.0.30 | 3.7    |
| `5.6.36`, `5.6`, `5` [_(Dockerfile 5.6)_]                   | 5.6.36 | 3.7    |
| `5.3.29`, `5.3` [_(Dockerfile 5.3)_]                        | 5.3.29 | 3.4    |
| `7.2.5-debug`, `7.2-debug`, `7-debug` [_(Dockerfile 7.2)_]  | 7.2.5  | 3.7    |
| `7.1.17-debug`, `7.1-debug` [_(Dockerfile 7.1)_]            | 7.1.17 | 3.7    |
| `7.0.30-debug`, `7.0-debug` [_(Dockerfile 7.0)_]            | 7.0.30 | 3.7    |
| `5.6.33-debug`, `5.6-debug`, `5-debug` [_(Dockerfile 5.6)_] | 5.6.36 | 3.7    |

## Image with more PHP extensions and orchestration actions

See https://github.com/wodby/php
