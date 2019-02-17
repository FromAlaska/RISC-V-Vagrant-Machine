#! /bin/bash

sudo apt-get update -y

sudo apt-get install dos2unix
sudo apt-get install xfce4

sed 's/console/anybody/' /etc/X11/Xwrapper.config

sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
sudo VBoxClient-all

sudo snap install vscode --classic

sudo apt-get install git

sudo apt-get install cmake -y

sudo chown vagrant /home/vagrant/.local/

sudo mkdir /usr/local/lib/python2.7/dist-packages/pip
sudo chown vagrant /usr/local/lib/python2.7/dist-packages/pip

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py

cd riscV/

# Instal dependencies for the project
sudo pip install -r /home/vagrant/riscV/requirements.txt

# LLVM Script
dos2unix llvm-provision.sh
./llvm-provision.sh

# DBT-RISE-RISCV Script
dos2unix dbt-rise-risvcv-provision.sh
./dbt-rise-risvcv-provision.sh

#sudo startxfce4&
