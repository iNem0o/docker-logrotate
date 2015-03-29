# inem0o/logrotate  -  logrotate container image
- [Introduction](#introduction)
- [Version](#version)
- [Configuration](#configuration)
- [Quick Start](#quick-start)
- [Changelog](#changelog)

## Introduction

Dockerfile to build a lightweight logrotate container image based on [Alpine Linux](https://www.alpinelinux.org/about/).

Total size is **under 7mb**

## Version

Latest version is **1.0.0** including Logrotate **3.8.8**

	inem0o/logrotate
	inem0o/logrotate:latest
	inem0o/logrotate:1.0
	inem0o/logrotate:1.0.0

## Configuration

Default configuration is stored in ``/logrotate.conf`` 

	/var/log/nginx/*.log {
	  daily
	  missingok
	  rotate 7
	  compress
	  delaycompress
	  notifempty
	  copytruncate
	  su root
	}

## Quick Start

	docker run --name='logrotate' --rm \
	-v $(pwd)/logrotate.conf:/logrotate.conf \
	-v $(pwd)/logs:/var/log \
	inem0o/logrotate

## Changelog

**1.0.0**
- initial release