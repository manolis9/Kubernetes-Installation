sudo apt-get update
sudo apt-get upgrade -y
sudo rm -rf /etc/kubernetes
#sudo rm -rf /var/lib/docker/*
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-get install -y docker.io kubelet kubeadm kubectl kubernetes-cni nfs-common
sudo systemctl start docker
sudo systemctl enable docker
kubeadm reset
sudo swapoff -a
IP_ADDR=$(ip addr show enp3s0 | grep -Po 'inet \K[\d.]+')
# With "CoreDNS" addon (recommended)
kubeadm init --feature-gates=CoreDNS=true --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=${IP_ADDR} --kubernetes-version v1.12.0
