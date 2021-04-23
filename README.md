
### Task 0: Install a ubuntu 16.04 server 64-bit

on a virtual machine, installation done.

![](./images/1.jpg)

for VM, use NAT network and forward required ports to host machine --done
- 22->2222 for ssh
- 80->8080 for gitlab
- 8081/8083->8081/8083 for go app
- 31080/31081->31080/31081 for go app in k8s

![](./images/2.jpg)




 Update  VMnet8 config, to make sure it's in the same subnet as the IP of virtual machine:Ubuntu16

![](./images/3.jpg)


### Task 1: Update system

($ ssh user@localhost -p 2222) -- done

![](./images/4.jpg)

upgrade the kernel to the 16.04 latest  -- done

![](./images/5.jpg)


### Task 2: install gitlab-ce version in the host
Expect output: Gitlab is up and running at http://127.0.0.1 (no tls or FQDN required)
Access it from host machine http://127.0.0.1:8080  -- done
![](./images/6.jpg)

### Task 3: create a demo group/project in gitlab
Expected source code at http://127.0.0.1:8080/demo/go-web-hello-world  -- done

![](./images/7.jpg)

### Task 4: build the app and expose ($ go run) the service to 8081 port

Expect output:  -- done
```
curl http://127.0.0.1:8081
Go Web Hello World!
```


![](./images/8.jpg)

![](./images/9.jpg)

### Task 5: install docker
--done

![](./images/10.jpg)


### Task 6: run the app in container

1) build a docker image ($ docker build) for the web app and run that in a container ($ docker run), expose the service to 8083 (-p)
please note 8082 was used by other app.  -- done
![](./images/11.jpg)
![](./images/12.jpg)
![](./images/13.jpg)




2) Expected output:  -- done
```
curl http://127.0.0.1:8083
Go Web Hello World!
```
![](./images/14.jpg)
![](./images/15.jpg)

3) Check in the Dockerfile into gitlab  -- done

![](./images/16.jpg)


### Task 7: push image to dockerhub

tag the docker image using your_dockerhub_id/go-web-hello-world:v0.1 and push it to docker hub (https://hub.docker.com/)
-- done
![](./images/17.jpg)
![](./images/18.jpg)



Expected output:
https://hub.docker.com/r/ellenxujuan/go-web-hello-world

![](./images/19.jpg)


