---
title: Install Docker on on macOS
image: docker-macos.png
---

<span class="w3-tag w3-green">macos 10.11, 64-bit</span>
<span class="w3-tag w3-green">macos 10.12, 64-bit</span>
<span class="w3-tag w3-green">macos 10.13, 64-bit</span>

## Step 1: Install Docker Engine

### Via Binary

- Download https://download.docker.com/mac/stable/Docker.dmg
- Open downloaded Docker.dmg and drag Docker to Applications

### Via [Homebrew](https://brew.sh)

```sh
brew cask install docker
```

## Step 2: Start Docker Engine

Search for "Docker.app" and open it

## Step 3: Verify installation

```sh
docker run hello-world
docker-compose version
```