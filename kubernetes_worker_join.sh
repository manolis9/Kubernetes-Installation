#!/bin/sh
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo rm -rf /etc/kubernetes
sudo swapoff -a
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y docker.io kubelet kubeadm kubectl kubernetes-cni nfs-common
sudo systemctl start docker
sudo systemctl enable docker
kubeadm join 137.82.223.95:6443 --token mpaq1n.d7vzkm7auq4y116r --discovery-token-unsafe-skip-ca-verification

