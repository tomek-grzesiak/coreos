podman run -i --rm quay.io/coreos/fcct:release --pretty --strict < example.fcc > example.ign

podman run --privileged --pull=always --rm -v .:/data -w /data \
	    quay.io/coreos/coreos-installer:release download -s stable -p metal -f iso

sudo coreos-installer install /dev/sda \
	    --ignition-url https://raw.githubusercontent.com/tomek-grzesiak/coreos/master/core.ign

 sudo hostnamectl set-hostname node1.mshome.net

 sudo rpm-ostree install pip
 sudo rpm-ostree install python3

sudo python -m pip install  https://github.com/ansible/ansible/archive/stable-2.9.tar.gz

 sudo pip3 install -r requirements.txt
