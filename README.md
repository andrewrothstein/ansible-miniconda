andrewrothstein.miniconda
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-miniconda.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-miniconda)

Installs [Miniconda](https://conda.io/miniconda.html)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.miniconda
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
