---
title: "Install Docker macOS"
---

<img src="/images/docker.png" height="100">
<img src="/images/macos.png" height="100">

<span class="w3-tag w3-green">macos 10.11, 64-bit</span>
<span class="w3-tag w3-green">macos 10.12, 64-bit</span>
<span class="w3-tag w3-green">macos 10.13, 64-bit</span>

### Step 1: Install Docker Engine

#### Binary

- Download https://download.docker.com/mac/stable/Docker.dmg
- Open downloaded Docker.dmg and drag Docker to Applications

#### Homebrew

```sh
brew cask install docker
```

### Step 2: Start Docker Engine

Search for `Docker.app` and open it

### Step 3: Verify Installation

```sh
docker run hello-world
docker-compose version
```