[tomek@fedora coreos]$ podman run -i --rm quay.io/coreos/fcct:release --pretty --strict < node1.fcc > node1.ign
[tomek@fedora coreos]$ podman run -i --rm quay.io/coreos/fcct:release --pretty --strict < node2.fcc > node2.ign
[tomek@fedora coreos]$ podman run -i --rm quay.io/coreos/fcct:release --pretty --strict < node4.fcc > node3.ign

podman run --privileged --pull=always --rm -v .:/data -w /data \
	    quay.io/coreos/coreos-installer:release download -s stable -p metal -f iso

sudo coreos-installer install /dev/sda \
	    --ignition-url https://raw.githubusercontent.com/tomek-grzesiak/coreos/master/core.ign

 sudo hostnamectl set-hostname node1.mshome.net

sudo python -m pip install  https://github.com/ansible/ansible/archive/stable-2.9.tar.gz

 sudo pip3 install -r requirements.txt
 sudp rpm-ostree install python3 pip  python3-libselinux
