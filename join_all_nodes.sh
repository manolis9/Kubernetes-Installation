token=$(kubeadm token create --ttl 0)
#echo $token
#join="sudo kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"
#echo $join
echo "kubeslave1"
sshpass -p kube ssh kube@137.82.223.110 "echo kube | sudo -S sh kubernetes_worker_join.sh"
sshpass -p kube ssh kube@137.82.223.110 "echo kube | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"
echo "kubeslave2"
sshpass -p kube ssh kube@137.82.223.149 "echo kube | sudo -S sh kubernetes_worker_join.sh"
sshpass -p kube ssh kube@137.82.223.149 "echo kube | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"
echo "kubeslave3"
sshpass -p kube ssh kube@137.82.223.114 "echo kube | sudo -S sh kubernetes_worker_join.sh"
sshpass -p kube ssh kube@137.82.223.114 "echo kube | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"
echo "kubeslave4"
sshpass -p kube ssh kube@137.82.223.96 "echo kube | sudo -S sh kubernetes_worker_join.sh"
sshpass -p kube ssh kube@137.82.223.96 "echo kube | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"
echo "kubeslave5"
sshpass -p kube ssh kube@137.82.223.95 "echo kube | sudo -S sh kubernetes_worker_join.sh"
sshpass -p kube ssh kube@137.82.223.95 "echo kube | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"



#sshpass -p jan_2018_ubc ssh satish@rubin2 "echo jan_2018_ubc | sudo -S sh kubernetes_worker_join.sh"
#sshpass -p jan_2018_ubc ssh satish@rubin2 "echo jan_2018_ubc | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-#token-unsafe-skip-ca-verification"


