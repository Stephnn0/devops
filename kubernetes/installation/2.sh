sudo apt-get install -y apt-transport-https ca-certificates curl gpg

# verify
# sudo mkdir /etc/apt/keyrings

# RETRIVE GOOGLE PUBLIC KEYRING TO VERIFY KUBERNETES
# OLD KEY
# curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg


# SETUP APT WITH THE KUBERNETES LOCATION PACKAGES TO ENABLE DOWNLOAD (ADD K8S TO SOURCES.LIST)
# OLD REPOSITORY
# echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list


sudo apt-get update

sudo apt-get install -y kubelet kubeadm kubectl 

# avoid packages being updated when apt updates
sudo apt-mark hold kubelet kubeadm kubectl