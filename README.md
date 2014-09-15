# Vagrant :: Ubuntu 14.04 + MongoDB 2.6

This project uses Vagrant to mount and deploy a test environment with Ubuntu 14.04 and MongoDB 2.6

## Requisites

### You will need:

  * Git 1.7+
  * Vagrant v1.6.5 + (http://vagrantup.com)
  * Virtualbox v4.3.16 + (https://www.virtualbox.org/)

### Vagrant plugins

You must have the "[vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest)" plugin installed before spawm the VM

    $ vagrant plugin install vagrant-vbguest
    [...]

## Do the work

### Clone this repositoriy with submodules (they are puppet submodules)

    $ git clone --recursive https://github.com/pedroamador/ubuntu1404-mongodb26
    [...]
    $ cd ubuntu1404-mongodb26
    [...]

### Start the VM

    ubuntu1404-mongodb26$ vagrant up
    Bringing machine 'ubuntumongo' up with 'virtualbox' provider...
    ==> ubuntumongo: Importing base box 'notgary/ubuntu-14-04-base'...
    ==> ubuntumongo: Matching MAC address for NAT networking...
    ==> ubuntumongo: Checking if box 'notgary/ubuntu-14-04-base' is up to date...
    [...]

### Access to the VM

You can go to VM "inside" with shell prompt in console mode, and then access to the "mongo" server

    ubuntu1404-mongodb26 prodriguez$ vagrant ssh
    Welcome to Ubuntu 14.04 LTS (GNU/Linux 3.13.0-24-generic x86_64)

     * Documentation:  https://help.ubuntu.com/
    Last login: Wed Sep 10 20:58:37 2014 from 10.0.2.2
    vagrant@ubuntumongo:~$ mongo
    MongoDB shell version: 2.6.4
    connecting to: test
    > 

With "vagrant ssh" you are logged in the VM with "vagrant" user. 
But you can enter `sudo -i` command to became "root"user
Or you can also exec `sudo [command]` commands.

---

## Notes

---

## Known issues

This MV don't work over "ecryptfs" mounted filesystems

https://bugzilla.redhat.com/show_bug.cgi?id=450867#c8

---

## ToDo
