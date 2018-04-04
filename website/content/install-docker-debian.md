---
title: "Install Docker Debian"
---

<img src="/images/docker.png" height="100">
<img src="/images/debian.png" height="100">

<span class="w3-tag w3-green">debian 9, 64-bit</span> 

### Step 1: Install Docker Engine

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

### Step 2: Install Docker Compose

```sh
VERSION=1.20.1
sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

### Step 3: Test Installation

```sh
docker run hello-world
docker-compose version
```