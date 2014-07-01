Execute installDocker.sh

chmod +x installDocker.sh
./installDocker.sh

then build the container
cd in good repertory
docker build -t="WebEnvironment" .

then launch du container
docker run -p 127.0.0.1:80:80 -p 443:443 -p 3306:3306 -p 6379:6379 -p 7379:7379 -p 8983:8983 -name WebEnvironment -i -t someimage -m /data:/data