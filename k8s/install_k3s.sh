sudo swapoff -a
sudo sed -i '/ swap / s/^/#/' /etc/fstab

free -h

curl -sfL https://get.k3s.io | sh -

mkdir -p ~/.kube
cp -p ~/.kube/config ~/.kube/config.bk
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown $USER:$USER ~/.kube/config

sudo systemctl status k3s
