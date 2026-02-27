# install helm
# curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
# helm version

sudo kubectl create namespace argocd

# add helm chart
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

# install argocd
helm install argocd argo/argo-cd --namespace argocd
