sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo sh -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list'
sudo apt-cache policy docker-engine
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y docker-engine
sudo docker run -d --restart=always --name=gogs -p 3000:3000 -p 3022:22  -v /var/overmind_data/gogs:/data:rw gogs/gogs
