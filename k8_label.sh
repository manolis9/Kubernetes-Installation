#!/usr/bin/env bash

node_name=$1
pm_label=$2
rack_label=$3

echo $node_name
echo $pm_label
echo $rack_label

kubectl label --overwrite nodes $node_name  $pm_label $rack_label
