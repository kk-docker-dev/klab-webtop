# Ubuntu desktop in docker container

### Pull Ubuntu desktop image

	docker push kribakarans/webtop:latest

### Run Ubuntu webtop

	docker run -it -p 5901:5901 -p 6901:6901 kribakarans/webtop:latest

### Explore the machine
- Explore the desktop in VNC client at `localhost:5901`
- Explore the desktop in web browser at http://localhost:6901/vnc_auto.html

### Build this image
Run the `build.sh` script to build the docker image. Based on the host, AMD64 and ARM64 images will be built.

### Manage Docker image

**Build and push AMD64 image**

	sudo docker build -t kribakarans/webtop:amd64 .
	sudo docker push kribakarans/webtop:amd64

**Build and push ARM64 image**

	sudo docker build -t kribakarans/webtop:arm64 .
	sudo docker push kribakarans/webtop:arm64

**Create and push manifest**

	sudo docker manifest rm kribakarans/webtop:latest
	sudo docker manifest create kribakarans/webtop:latest kribakarans/webtop:amd64 kribakarans/webtop:arm64
	sudo docker manifest push kribakarans/webtop:latest
