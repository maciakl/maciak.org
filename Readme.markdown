Source for maciak.org
=====================

Source files for maciak.org along with the VM bootstrap.

Dev Requirements
----------------

- [Vagrant](http://vagrantup.com)
- [Bower](http://bower.io)

Setup
-----

To set up the environment:

- Boot up vagrant for the first time with `vagrant up`
- Log into vagrant box with `vagrant ssh`
- Edit `/etc/apache2/sites-available/default` and change `AllowOverride None` to `AllowOverride All`
- Exit out of guest, and on host do `bower install` to pull down bootstrap and jquery files

This should be all.

Deployment
----------

Deploying from windows:

    winscp /script=deploy

Make sure to have the right path in the `deploy` script.
