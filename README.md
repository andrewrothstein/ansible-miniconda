andrewrothstein.miniconda
=========
![Build Status](https://github.com/andrewrothstein/ansible-miniconda/actions/workflows/build.yml/badge.svg)
[![role](https://img.shields.io/ansible/role/7497)](https://galaxy.ansible.com/andrewrothstein/miniconda)
[![quality](https://img.shields.io/ansible/quality/7497)](https://galaxy.ansible.com/andrewrothstein/miniconda)
[![downloads](https://img.shields.io/ansible/role/d/7497?label=downloads)](https://galaxy.ansible.com/andrewrothstein/miniconda)

Installs [Miniconda](https://conda.io/miniconda.html). Please consider [andrewrothstein.conda-env](https://github.com/andrewrothstein/ansible-conda-env) for managing your Conda environments declaratively with Ansible too!

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
