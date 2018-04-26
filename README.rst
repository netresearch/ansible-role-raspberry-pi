=========================
Ansible role raspberry pi
=========================

This Ansible role installs all requirements for IoT devices on a raspberry pi.

Currently supported platforms
=============================

- Debian

What does this role do?
=======================
- installs security roles
- installs latest node version

Requirements
============
- ansible 2.4
- python

Role variables
==============

| Name                  | Default Value                     | Description                  |
| --------------------- | --------------------------------- | -----------------------------|
| `docker_compose_path` | `"/usr/local/bin/docker-compose"` | docker-compose install path  |
