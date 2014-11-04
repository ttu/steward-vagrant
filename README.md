The Thing System Steward - Vagrant
=======

Vagrant virtual machine for developing The Thing System Steward.

##Installation on Windows

Install [Vagrant](https://www.vagrantup.com/downloads)

Vagrant supports [Hyper-V](https://docs.vagrantup.com/v2/hyperv/index.html) with Windows 8.1.

With older Windows, or if you don't want to use Hyper-V, install [Oracle VirtualBox](https://www.virtualbox.org/wiki/Downloads) and in Windows 8 disable Hyper-V (Control Panel -> Programs -> Add remove features)

As Windows has 260 character file name limitation and node modules tend to have a deep hierarchy (steward's longest file name is ~230 characters), it is recommended to put virtual machine to a folder with a path of ~20 characters (because of synced devenv folder). 

## Start

Go to virtual machines folder and type (this may take like 30min)

> vagrant up

Download SSH Client e.g. [Putty](http://www.putty.org/) and connect to virtual machine

> Host name: 127.0.0.1

> Port: 2222

> login as: vagrant

> password: vagrant

Start Steward 

> cd devenv/steward/steward

> sudo ./run.sh 

Open browser to (have to accept to connect to untrusted site)

> https://localhost:8888

##Links

* [The Thing System homepage](http://thethingsystem.com/)
* [Steward wiki](https://github.com/TheThingSystem/steward/wiki)
