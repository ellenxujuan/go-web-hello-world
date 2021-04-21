### Task 0: Install a ubuntu 16.04 server 64-bit

installed ubuntu 16.06 in a VMWare workstation virtual machine

for VM, use NAT network and forward required ports to host machine
- 22->2222 for ssh
- 80->8080 for gitlab
- 8081/8083->8081/8083 for go app
- 31080/31081->31080/31081 for go app in k8s


Update  VMnet8 config, to make sure it's in the same subnet as the IP of virtual machine:Ubuntu16



### Task 1: Update system

($ ssh user@localhost -p 2222)


upgrade the kernel to the 16.04 latest




### Task 2: install gitlab-ce version in the host


### Task 3: create a demo group/project in gitlab
Expect source code at http://127.0.0.1:8080/demo/go-web-hello-world



### Task 4: build the app and expose ($ go run) the service to 8081 port

Expect output: 
```
curl http://127.0.0.1:8081
Go Web Hello World!
```


### Task 5: install docker
https://docs.docker.com/install/linux/docker-ce/ubuntu/



### Task 6: run the app in container

build a docker image ($ docker build) for the web app and run that in a container ($ docker run), expose the service to 8083 (-p)
please note 8082 was used by other app.





Expect output:
```
curl http://127.0.0.1:8082
Go Web Hello World!
```



Check in the Dockerfile into gitlab




### Task 7: push image to dockerhub

tag the docker image using ellenxujuan/go-web-hello-world:v0.1 and push it to docker hub (https://hub.docker.com/)

Expect output:https://hub.docker.com/r/ellenxujuan/go-web-hello-world



