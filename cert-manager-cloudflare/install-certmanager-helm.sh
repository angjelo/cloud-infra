#Add the helm repo
helm repo add jetstack https://charts.jetstack.io

# You can remove the experimental support if you don't need it 
helm install cert-manager jetstack/cert-manager --version v1.12.3 \
    --namespace cert-manager \
    --set installCRDs=true \
    --create-namespace \
    --set "extraArgs={--feature-gates=ExperimentalGatewayAPISupport=true}"
