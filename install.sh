#/bin/bash
set -vx
sudo coreos-installer install /dev/vda \
	            --ignition-url https://raw.githubusercontent.com/tomek-grzesiak/coreos/master/${1}.ign

sudo coreos-installer install /dev/vda \
	            --ignition-url https://raw.githubusercontent.com/tomek-grzesiak/coreos/master/node1.ign


sudo coreos-installer install /dev/vda \
	            --ignition-url https://raw.githubusercontent.com/tomek-grzesiak/coreos/master/node1.ign
