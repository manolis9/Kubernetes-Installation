#!/bin/sh
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo rm -rf /etc/kubernetes
sudo rm -rf /var/lib/docker/*
sudo swapoff -a
sudo apt-get update
sudo apt-get upgrade -y
sudo kill -9 $(sudo lsof -t -i:10250)
sudo apt-get install -y docker.io kubelet kubeadm kubectl kubernetes-cni nfs-common
sudo systemctl start docker
sudo systemctl enable docker
#kubeadm join 137.82.223.95:6443 --token 2nwl3f.vi9fdz129jqw5tld --discovery-token-unsafe-skip-ca-verification
#kubeadm join 137.82.223.95:6443 --token afoiif.yycdgjtivrgaacjk --discovery-token-ca-cert-hash sha256:8feb98ad9115fd005c89a5b723abf54b945e1f342b93d97c9aa587e31fa68436



