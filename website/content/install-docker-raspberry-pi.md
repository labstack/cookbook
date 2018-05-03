---
title: Install Docker on Raspberry Pi
image: docker-raspberry-pi.png
---

<span class="w3-tag w3-green">raspbian 9, armv7l</span> 

## Step 1: Install Docker Engine

```sh
bash <(curl -fsSL get.docker.com)
sudo usermod -aG docker $USER # Add current user to the "docker" group
```

## Step 2: Reboot

```sh
sudo reboot
```

## Step 3: Install Docker Compose

```sh
pip install docker-compose
```

## Step 4: Verify installation

```sh
docker run hello-world
docker-compose version
```