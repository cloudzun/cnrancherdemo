cd
rm -rf cnrancherdemo
az group delete -n  cnrancherdemo --yes
ssh-keygen -f "/home/chengzh/.ssh/known_hosts" -R "rancherdemo.chinaeast2.cloudapp.chinacloudapi.cn"
ssh-keygen -f "/home/chengzh/.ssh/known_hosts" -R "ranchersrv1.chinaeast2.cloudapp.chinacloudapi.cn"
ssh-keygen -f "/home/chengzh/.ssh/known_hosts" -R "ranchersrv2.chinaeast2.cloudapp.chinacloudapi.cn"
ssh-keygen -f "/home/chengzh/.ssh/known_hosts" -R "ranchersrv3.chinaeast2.cloudapp.chinacloudapi.cn"
