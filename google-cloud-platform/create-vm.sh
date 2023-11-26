# Cria uma Máquina Virtual Ubuntu 22.04 na Google Cloud chamada mineserver com: 
# 4CPU, 16GB de RAM, 20GB de espaço na zona US-Central1-A e firewall aberto para HTTP/HTTPS

gcloud compute instances create mineserver --machine-type e2-standard-4 --zone us-central1-a --boot-disk-size 20GB --image-family ubuntu-2204-lts --network-interface eth0=tcp:80,tcp:443
