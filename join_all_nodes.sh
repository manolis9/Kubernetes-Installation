token=$(kubeadm token create --ttl 0)
echo $token
join=kubeadm join 137.82.223.148:6443 $token --discovery-token-unsafe-skip-ca-verification
echk $join
#sshpass -p jan_2018_ubc ssh satish@rubin3 "echo jan_2018_ubc | sudo -S sh kubernetes_worker_join.sh"

