go-daikon-box
=============

This project is a definition of a [vagrant](https://www.vagrantup.com/) box which installs the following components:

- [Ubuntu 64-bit](http://www.ubuntu.com/)
- [Java 1.7](https://www.oracle.com/java/index.html)
- [gcc 4.9](https://gcc.gnu.org/gcc-4.9/)
- [go](https://golang.org/)
- [daikon](http://plse.cs.washington.edu/daikon/)
- [txl](http://txl.ca/)
- [influxdb](http://influxdb.com/)

The idea is to create an environment in which you can run [daikon](http://plse.cs.washington.edu/daikon/) (the dynamic invariant detector) on go code. The steps are listed below in order to get this [vagrant](https://www.vagrantup.com/) box up and running.

Setting up Vagrant box for MacOS X
----------------------------------

1. Install [Homebrew](http://brew.sh/)

    `$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
1. Install [Homebrew cask](http://caskroom.io/)

    `$ brew install caskroom/cask/brew-cask`
1. Install [VirtualBox](https://www.virtualbox.org/)

   `$ brew cask install virtualbox`
1. Install [Vagrant](https://www.vagrantup.com/)

    `$ brew cask install vagrant`
1. Install [Vagrant-Manager](http://vagrantmanager.com/) (this is optional)

    `$ brew cask install vagrant-manager`
1. Change directory to `go-daikon-box\vagrant`
1. Install plugins

    `$ vagrant plugin install vagrant-vbguest`

    `$ vagrant plugin install puppetlabs-java`
1. Execute the `vagrant` command

    `$ vagrant up`
1. Once everything is setup, `ssh` into vagrant instance

    `$ vagrant ssh`
1. Follow directions in the `README` file located in `/home/vagrant`
