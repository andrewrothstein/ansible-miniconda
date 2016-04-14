miniconda
=========

Installs the mini-Anaconda distribution to /opt/miniconda

miniconda_make_sys_default will put the python distro packaged with Anaconda into the default bash path
miniconda_cleanup will delete the installer binary after completing the installation. useful inside of containers. breaks idempotency.


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - andrewrothstein.miniconda

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
