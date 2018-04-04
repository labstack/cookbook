---
title: "Install Docker"
---

## Debian

`9/64-bit`

### Install Docker Engine

```sh
apt-get install -y sudo
sudo apt-get install -y \
    apt-transport-https \
    software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker $USER # Add current user to the "docker" group
```

### Install Docker Compose

```sh
VERSION=1.20.1
sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

### Test

```sh
docker run hello-world
docker-compose version
```

## Raspberry Pi

`raspbian/9/armv7l`

### Install Docker Engine

```sh
bash <(curl -fsSL get.docker.com)
sudo usermod -aG docker $USER # Add current user to the "docker" group
sudo reboot
```

### Install Docker Compose

```sh
pip install docker-compose
```

### [Test](#test)

## Ubuntu

`16.04/64-bit`

### Install Docker Engine

```sh
curl https://download.docker.com/linux/ubuntu/dists/artful/pool/stable/amd64/docker-ce_18.03.0~ce-0~ubuntu_amd64.deb
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker $USER # Add current user to the "docker" group
```


### [Install Docker Compose](#install-docker-compose)

### [Test](#test)
## CentOS

`7/64-bit`

### Install Docker Engine

```sh
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
sudo systemctl start docker
sudo usermod -aG docker $USER # Add current user to the "docker" group
```

### [Install Docker Compose](#install-docker-compose)

### [Test](#test)