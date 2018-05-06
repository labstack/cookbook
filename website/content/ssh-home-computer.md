---
title: SSH Home Computer
image: ssh-home-computer.png
---

### How to access a home or remote computer over the internet via SSH?

## Step 1: Install SSH server

Most of the operating systems are already running an SSH server, so I will only focus on a few systems.

### Windows

```sh
choco install -y -params "/SSHServerFeature" openssh
```

### Raspberry Pi

Enable and start SSH

```sh
sudo systemctl enable ssh
sudo systemctl start ssh
```

Make sure to change the default password for user `pi`

```sh
passwd
```

## Step 2: Create tunnel

At this point, SSH port is only accessible on your local network, to make it accessible over the internet we will create a secure tunnel.

```sh
ssh -R 0:localhost:22 labstack.me
```

If you don't already have an RSA key pair use `ssh-keygen` command to generate one

> Keep a note of assigned host and port from the routing URI e.g. `tcp://leo.labstack.me:28910`

## Step 3: Verify access

From another computer

```sh
ssh <REMOTE_USER>@<ASSIGNED_HOST> -p <ASSIGNED_PORT>
```
