sudo -s

printf "\n192.168.15.93 k8s-control\n192.168.15.94 k8s-2\n\n" >> /etc/hosts

printf "overlay\nbr_netfilter\n" >> /etc/modules-load.d/containerd.conf

