token=$(kubeadm token create --ttl 0)
#echo $token
#join="sudo kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"
#echo $join
echo "ssplabvk2"
sshpass -p jan_2018_ubc ssh satish@ssplabvk2 "echo jan_2018_ubc | sudo -S sh kubernetes_worker_join.sh"
sshpass -p jan_2018_ubc ssh satish@ssplabvk2 "echo jan_2018_ubc | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"
echo "rubin3"
sshpass -p jan_2018_ubc ssh satish@rubin3 "echo jan_2018_ubc | sudo -S sh kubernetes_worker_join.sh"
sshpass -p jan_2018_ubc ssh satish@rubin3 "echo jan_2018_ubc | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"
echo "vklab9"
sshpass -p satish_root ssh ssatish@vklab9 "echo satish_root | sudo -S sh kubernetes_worker_join.sh"
sshpass -p satish_root ssh ssatish@vklab9 "echo satish_root | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-token-unsafe-skip-ca-verification"

#sshpass -p jan_2018_ubc ssh satish@rubin2 "echo jan_2018_ubc | sudo -S sh kubernetes_worker_join.sh"
#sshpass -p jan_2018_ubc ssh satish@rubin2 "echo jan_2018_ubc | sudo -S kubeadm join 137.82.223.148:6443 --token $token --discovery-#token-unsafe-skip-ca-verification"


