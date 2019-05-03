# About this Repo

[![Build Status](https://travis-ci.org/wodby/base-php.svg?branch=master)](https://travis-ci.org/wodby/base-php)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/base-php.svg)](https://hub.docker.com/r/wodby/base-php)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/base-php.svg)](https://hub.docker.com/r/wodby/base-php)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/base-php.svg)](https://microbadger.com/images/wodby/base-php)

This repository is a fork of https://github.com/docker-library/php with a few changes:

* Base image set to [wodby/alpine](https://github.com/wodby/alpine) with stability tags
* We build only Alpine-based FPM variants
* Additional debug variants of images with `--enable-debug` and non-stripped bins

## Docker Images

* All images are based on Alpine Linux
* Base image: [wodby/alpine](https://github.com/wodby/alpine)
* [Travis CI builds](https://travis-ci.org/wodby/base-php) 
* [Docker Hub](https://hub.docker.com/r/wodby/base-php)

Supported tags and respective `Dockerfile` links

* `7.3.5`, `7.3`, `7`, `latest` [_(7.3/alpine3.9/fpm/Dockerfile.wodby)_]
* `7.2.18`, `7.2` [_(7.2/alpine3.9/fpm/Dockerfile.wodby)_]
* `7.1.29`, `7.1` [_(7.1/alpine3.9/fpm/Dockerfile.wodby)_]
* `7.3.5-debug`, `7.3-debug`, `7-debug` [_(7.3/alpine3.9/fpm/Dockerfile.wodby)_]
* `7.2.18-debug`, `7.2-debug`, `7-debug` [_(7.2/alpine3.9/fpm/Dockerfile.wodby)_]
* `7.1.29-debug`, `7.1-debug` [_(7.1/alpine3.9/fpm/Dockerfile.wodby)_]

## Configurable image with pre-compiled extensions

For actual development and production usage see descendant image [wodby/php](https://github.com/wodby/php)

[_(7.3/alpine3.9/fpm/Dockerfile.wodby)_]: https://github.com/wodby/base-php/tree/master/7.3/alpine3.9/fpm/Dockerfile.wodby
[_(7.2/alpine3.9/fpm/Dockerfile.wodby)_]: https://github.com/wodby/base-php/tree/master/7.2/alpine3.9/fpm/Dockerfile.wodby
[_(7.1/alpine3.9/fpm/Dockerfile.wodby)_]: https://github.com/wodby/base-php/tree/master/7.1/alpine3.9/fpm/Dockerfile.wodby
