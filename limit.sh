#!/bin/bash

echo "Start"

dev_interface=$1
dst_ip=$2
bandwidth="$3kbps"
clas_id=$4
echo "$bandwidth"

tc qdisc add dev $dev_interface  root handle 1: htb
tc class add dev $dev_interface  parent 1: classid 1:$clas_id htb rate $bandwidth
tc filter add dev $dev_interface protocol ip parent 1: prio 1 u32 match ip dst $dst_ip flowid 1:$clas_id

echo "done"

tc class show dev $dev_interface
tc filter show dev $dev_interface
