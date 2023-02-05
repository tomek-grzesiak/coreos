podman run -i --rm quay.io/coreos/fcct:release --pretty --strict < node1.fcc > node1.ign
podman run -i --rm quay.io/coreos/fcct:release --pretty --strict < node2.fcc > node2.ign
podman run -i --rm quay.io/coreos/fcct:release --pretty --strict < node3.fcc > node3.ign

#podman run --privileged --pull=always --rm -v .:/data -w /data \
#	    quay.io/coreos/coreos-installer:release download -s stable -p metal -f iso

#sudp rpm-ostree install python3 pip  python3-libselinux
