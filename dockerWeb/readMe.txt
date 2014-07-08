Cheat Sheet
https://gist.github.com/wsargent/7049221


Execute installDocker.sh

chmod +x installDocker.sh
./installDocker.sh


Build container
cd in good repertory
docker build -t="WebEnvironment" .


Export in tarball
docker export {CONTAINER}
docker export red_panda > latest.tar


Import
docker import http://example.com/exampleimage.tgz
cat exampleimage.tgz | sudo docker import - exampleimagelocal:new


Launch container
docker run -p 127.0.0.1:80:80 -p 443:443 -p 3306:3306 -p 6379:6379 -p 7379:7379 -p 8983:8983 --name WebEnvironment -i -t someimage -v /home:/var/www --dns=8.8.8.8 --dns=8.8.4.4

i interactif
t image
d daemon



Supprimer tous les conteneurs:
docker ps -a|sed "1 d"|awk '{print $1}'|xargs docker rm


Supprimer toutes les images:
docker images|sed "1 d"|awk '{print $3}'|sort|uniq|xargs docker rmi


docker attach —sig-proxy=false IDconainer


GUI to manage your Docker container

- DockerUI
docker run --name DockerUI -d -p 9000:9000 -v /var/run/docker.sock:/docker.sock crosbymichael/dockerui -e /docker.sock
then http://127.0.0.1:9000

- Shipyard
docker run --name Shipyard -i -t -v /var/run/docker.sock:/docker.sock shipyard/deploy setup
then http://127.0.0.1:8000

docker run --name ShipyardAgent -i -d -t -v /var/run/docker.sock:/docker.sock \
  -e IP=`ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{print $1;}'` \
  -e URL=http://<YourIP>:8000 -p 4500:4500 shipyard/agent

!!! YourIP != 127.0.0.1 OR localhost