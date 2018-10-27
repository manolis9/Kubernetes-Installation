sudo swapoff -a
sudo kubeadm reset 
IP_ADDR=$(ip addr show enp4s0 | grep -Po 'inet \K[\d.]+')
sudo kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=${IP_ADDR} --kubernetes-version v1.12.0
sudo rm -r $HOME/.kube
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
