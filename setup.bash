az group create --name cnrancherdemo --location chinaeast2

az vm create --resource-group cnrancherdemo --name rancherdemo --public-ip-address-dns-name rancherdemo --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data host.txt  
az vm open-port --resource-group cnrancherdemo --name rancherdemo --port 443 --priority 1001
az vm open-port --resource-group cnrancherdemo --name rancherdemo --port 80 --priority 1002
az vm open-port --resource-group cnrancherdemo --name rancherdemo --port 5601 --priority 1003

az vm create --resource-group cnrancherdemo --name ranchersrv1 --public-ip-address-dns-name ranchersrv1 --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data node.txt
az vm open-port --resource-group cnrancherdemo --name ranchersrv1 --port 0-65535 --priority 1001

az vm create --resource-group cnrancherdemo --name ranchersrv2 --public-ip-address-dns-name ranchersrv2 --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data node.txt
az vm open-port --resource-group cnrancherdemo --name ranchersrv2 --port 0-65535 --priority 1001

az vm create --resource-group cnrancherdemo --name ranchersrv3 --public-ip-address-dns-name ranchersrv3 --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data node.txt
az vm open-port --resource-group cnrancherdemo --name ranchersrv3 --port 0-65535 --priority 1001






