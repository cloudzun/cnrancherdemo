az group create --name cnrancherdemo --location chinaeast2
az vm create --resource-group cnrancherdemo --name rancherdemo --public-ip-address-dns-name rancherdemo --image UbuntuLTS --admin-username chengzh --authentication-type password --admin-password Azure1234567890+ --size  Standard_B2ms --custom-data host.txt  
az vm open-port --resource-group cnrancherdemo --name rancherdemo --port 443 --priority 1001
az vm open-port --resource-group cnrancherdemo --name rancherdemo --port 80 --priority 1002


az vm create --resource-group cnrancherdemo --name ranchernode1 --public-ip-address-dns-name ranchernode1 --image UbuntuLTS --admin-username chengzh --authentication-type password --admin-password Azure1234567890+ --size  Standard_B2ms --custom-data node.txt
az vm open-port --resource-group cnrancherdemo --name ranchernode1 --port 0-65535 --priority 1001

az vm create --resource-group cnrancherdemo --name ranchernode2 --public-ip-address-dns-name ranchernode2 --image UbuntuLTS --admin-username chengzh --authentication-type password --admin-password Azure1234567890+ --size  Standard_B2ms --custom-data node.txt
az vm open-port --resource-group cnrancherdemo --name ranchernode2 --port 0-65535 --priority 1001

az vm create --resource-group cnrancherdemo --name ranchernode3 --public-ip-address-dns-name ranchernode3 --image UbuntuLTS --admin-username chengzh --authentication-type password --admin-password Azure1234567890+ --size  Standard_B2ms --custom-data node.txt
az vm open-port --resource-group cnrancherdemo --name ranchernode3 --port 0-65535 --priority 1001
