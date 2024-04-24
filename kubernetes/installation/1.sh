# BECOME ROOT
sudo -s

# UPDATE AND UPGRADE THE SYSTEM
apt update
apt upgrade

# CHANGE TERMINAL HOST NAME
systemctl set-hostname master
exec bash

# ADD TERMINAL HOST NAME TO HOSTS
printf "\n10.0.2.15\n" >> /etc/hosts

# DISABLE SWAPOFF
swapoff -a
free -m

# IP BRIDGE FOR NODES NETWORK COMMUNICATION

printf "overlay\nbr_netfilter\n" >> /etc/modules-load.d/k8s.conf

modprobe overlay
modprobe br_netfilter

# SETUP SYSCTL PARAMS 

printf "net.bridge.bridge-nf-call-iptables = 1\nnet.ipv4.ip_forward = 1\nnet.bridge.bridge-nf-call-ip6tables = 1\n" >> /etc/sysctl.d/k8s.conf

# APPLY CHANGES
sysctl --system