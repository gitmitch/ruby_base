Base Ruby on Rails Development Environment with Vagrant
=======================================================

After installing VirtualBox and Vagrant, you can use this repo to launch a Ruby
on Rails development environment.

## Usage

Start the VM:

    $ vagrant up

SSH into the VM:

    $ vagrant ssh

## Provisioning

On a fresh VM, the Vagrant provisioning process will install required packages,
but it won't install rbenv. For first-time rbenv installation run this on the
VM in the `/vagrant` directory:

    $ ./init_rbenv.sh

Then, to install Rails, run:

    $ ./install_rails.sh

To setup Git, run this:

    $ ./setup_git.sh

Edit all of the above files to change versions as they go out-of-date.

## Source Code

Vagrant will synchronize ../vagrant_src on the host with /vagrant_src on the VM.
You can put your source files in that directory.

Tip: On the host, use a symbolic link to switch between different projects in
different source directories with the same VM without having to modify the
Vagrantfile:

    $ mkdir ../fancy_rails_app
    $ ln -s ../vagrant_src ../fancy_rails_app
