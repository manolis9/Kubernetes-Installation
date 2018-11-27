#!/bin/sh
sudo rm -rf /etc/kubernetes
sudo rm -rf /var/lib/docker/*
sudo swapoff -a
sudo apt-get update
sudo apt-get upgrade -y
sudo kill -9 $(sudo lsof -t -i:10250)
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-get install -y docker.io kubelet kubeadm kubectl kubernetes-cni nfs-common
sudo systemctl start docker
sudo systemctl enable docker



