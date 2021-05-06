# Node.js with Docker
This Dockerfile can create a basic Node.js environment image.

## Pull Docker Image
Pull docker image from dockerhub.  
```
$ docker push twj666/node-helloworld:tagname
```

## Build Image
```
$ docker build . -t [ImageName]:[Tag]
```

## Run Container
```
$ docker run -it --rm -p 3001:3000 --name [ContainerName] [Image Id]
```

#### parameters
1. --rm : remove the container automatically
2. -i : 讓容器的標準輸入保持打開
3. -t : 讓Docker分配一個虛擬終端並綁訂到容器的標準輸入上
4. -d : 讓容器在後台以守護態(Daemonized)形式執行
5. -p : 指定本機網路的port與容器的某個port對映

## Install Docker in AWS EC2
```
1. $ sudo yum update -y
2. $ sudo amazon-linux-extras install docker
3. $ sudo service docker start
4. $ sudo usermod -a -G docker ec2-user
```
reference:
https://docs.aws.amazon.com/zh_tw/AmazonECS/latest/developerguide/docker-basics.html