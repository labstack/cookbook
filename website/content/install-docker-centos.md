---
title: "Install Docker CentOS"
---

<img src="/images/docker.png" height="100">
<img src="/images/centos.svg" height="100">

<span class="w3-tag w3-green">centos 7, 64-bit</span> 

### Step 1: Install Docker Engine

```sh
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
sudo systemctl start docker
sudo usermod -aG docker $USER # Add current user to the "docker" group
```

### Step 2: Install Docker Compose

```sh
VERSION=1.20.1
sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

### Step 3: Verify Installation

```sh
docker run hello-world
docker-compose version
```