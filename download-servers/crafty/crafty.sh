docker run \
  --name crafty_container \
  --detach \
  --restart always \
  -p 8000:8000 \
  -p 8443:8443 \
  -p 8123:8123 \
  -p 19132:19132/udp \
  -p 25500-25600:25500-25600 \
  -e TZ=Etc/UTC \
  -v "/$(pwd)/docker/backups:/crafty/backups" \
  -v "/$(pwd)/docker/logs:/crafty/logs" \
  -v "/$(pwd)/docker/servers:/crafty/servers" \
  -v "/$(pwd)/docker/config:/crafty/app/config" \
  -v "/$(pwd)/docker/import:/crafty/import" \
  arcadiatechnology/crafty-4:latest