#!/bin/bash


export NAME="cilium-sw"
export AZ_RESOURCEGROUP="resource group"
export AZ_LOCATION="ylocation"

az aks create \
    -n "${NAME}" \
    --network-plugin=none \
    -l "${AZ_LOCATION}" \
    -g "${AZ_RESOURCEGROUP}" \
    --kube-proxy-config="kube-proxy.json" \
    --enable-cluster-autoscaler \
    --min-count=1 \
    --max-count=2 \
    --no-wait \
    --node-count=1 \
    --node-vm-size="Standard_B2s" \
    --load-balancer-sku="basic" \
    --generate-ssh-keys
