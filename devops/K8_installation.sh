sudo apt-get update
swapoff -a
sudo apt-get install openssh-server  
sudo apt-get update
sudo apt-get install -y docker.io
sudo apt-get update && apt-get install -y apt-transport-https curl
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update
echo "Install kubeadm, Kubelet And Kubectl "
sudo apt-get install -y kubelet kubeadm kubectl 
echo "successfully installed Kubernetes"
