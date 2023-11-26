$ mkdir -p /var/lib/pufferpanel
$ docker volume create pufferpanel-config
$ docker create --name pufferpanel -p 8080:8080 -p 5657:5657 -v pufferpanel-config:/etc/pufferpanel -v /var/lib/pufferpanel:/var/lib/pufferpanel -v /var/run/docker.sock:/var/run/docker.sock --restart=on-failure pufferpanel/pufferpanel:latest
$ docker start pufferpanel
$ docker exec -it pufferpanel /pufferpanel/pufferpanel user add

docker inspect pufferpanel --format='{{range .Config.Env}}{{println .}}{{end}}'

sudo groupadd --force --system docker
sudo usermod -a -G docker pufferpanel

systemctl restart pufferpanel