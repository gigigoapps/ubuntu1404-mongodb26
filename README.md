## Vagrant :: Ubuntu 14.04 + MongoDB 2.6

This project uses Vagrant to mount and deploy a test environment with Ubuntu 14.04 and MongoDB 2.6

### You will need:

  * Git 1.7+
  * Vagrant v1.6.5 + (http://vagrantup.com)
  * Virtualbox v4.3.16 + (https://www.virtualbox.org/)

### Clone this repositoriy and update submodules code

    $ git clone https://github.com/pedroamador/ubuntu1404-mongodb26
    [...]
    $ cd ubuntu1404-mongodb26
    [...]

### Start the VM

    ubuntu1404-mongodb26$ vagrant up
    [...]

### Provision virtual machine

With `vagrant provision` the system will deploy the configuration, packages and services described in the recipies

    ubuntu1404-mongodb26$ vagrant provision
    [...]

### Admin virtual machine

You can go to VM "inside" with shell prompt in console mode to admin the services deployed inside them

    ubuntu1404-mongodb26$ vagrant ssh
    [...]

Then, when you have entered in console mode into the VM, you are loged with "vagrant" user. 
But you can enter `sudo -i` command to became "root"user
Or you can also exec `sudo [command]` commands.

---

## Notes

---

## Known issues

---

## ToDo
