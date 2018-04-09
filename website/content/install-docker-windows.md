---
title: "Install Docker Windows"
---

<img src="/images/docker.png" height="100">
<img src="/images/windows.svg" height="100">

<span class="w3-tag w3-green">windows 10, 64-bit</span>

## Step 1: Install Docker Engine

### Binary

Download and run https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe

### Chocolatey

```sh
choco install -y docker-for-windows
```

## Step 2: Logout/login

## Step 3: Start Docker Engine

Search for "Docker" and open it

## Step 4: Verify installation

```sh
docker run hello-world
docker-compose version
```

## Troubleshooting

- If you are running Windows in a hypervisor, you might have to right click Docker icon in the taskbar and select "Switch to Windows containers..."