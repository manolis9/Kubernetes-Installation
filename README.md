# Kubernetes-Installation
1. run run_master.sh to initiate the master.
2. then run fix_kubectl.sh to be able to access kubectl and deploy weave overlay network.
3. to connect the nodes, add new node information to join_all_nodes.sh and run it.
4. Make sure that kubernetes_worker_join.sh is available in the home directory of every node before running join_all_nodes.sh script.
