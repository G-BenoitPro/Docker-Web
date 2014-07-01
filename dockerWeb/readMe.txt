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
docker run -p 127.0.0.1:80:80 -p 443:443 -p 3306:3306 -p 6379:6379 -p 7379:7379 -p 8983:8983 --name WebEnvironment -i -t someimage -m /data:/data


