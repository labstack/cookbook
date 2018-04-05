---
title: "Install Docker Windows"
---

<img src="/images/docker.png" height="100">
<img src="/images/windows.svg" height="100">

<span class="w3-tag w3-green">windows 10, 64-bit</span>

### Step 1: Install Docker Engine

```sh
choco install -y docker-for-windows
```

### Step 2: Start Docker Engine

Search for `Docker` and open it

### Step 3: Verify Installation

```sh
docker run hello-world
docker-compose version
```