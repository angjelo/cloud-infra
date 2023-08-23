#!/bin/bash

git clone https://github.com/cilium/cilium
cd cilium

cilium install --chart-directory ./install/kubernetes/cilium \
    --set kubeProxyReplacement=true \
    --set gatewayAPI.enabled=true
    --set azure.resourceGroup=${AZ_RESOURCEGROUP}
