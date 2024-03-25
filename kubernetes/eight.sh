sudo -s

apt-get install -y kubelet=1.26.1-00 kubeadm=1.26.1-00 kubectl=1.26.1-00
apt-mark hold kubelet kubeadm kubectl

free -m

### ONLY ON CONTROL NODE .. control plane install:
kubeadm init --pod-network-cidr 10.10.0.0/16 --kubernetes-version 1.26.1 --node-name k8s-control

# add Calico 3.25 CNI 
### https://docs.tigera.io/calico/3.25/getting-started/kubernetes/quickstart
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.0/manifests/tigera-operator.yaml
wget https://raw.githubusercontent.com/projectcalico/calico/v3.25.0/manifests/custom-resources.yaml
vi custom-resources.yaml <<<<<< edit the CIDR for pods if its custom
kubectl apply -f custom-resources.yaml
