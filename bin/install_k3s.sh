sudo swapoff -a
sudo sed -i '/ swap / s/^/#/' /etc/fstab

free -h

curl -sfL https://get.k3s.io | sh -

sudo systemctl status k3s
