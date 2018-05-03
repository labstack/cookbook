---
title: Remotely Access Computer
image: remote-computer.png
---

### How to access a remote computer (Windows, MacOS, Linux, Raspberry Pi, etc.) via SSH or VNC?

## Step 1: Install SSH server

Most of the OS are already running an SSH server, so I will only focus on a few systems

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

## Step 2: Install VNC server

### Windows

```sh
choco install -y tightvnc
```

Open "TightVNC Service" from taskbar, go to Server tab, check "Require VNC authentication" and set primary password

### Raspberry Pi

```sh
sudo apt-get update
sudo apt install -y realvnc-vnc-server
```

Go to "Menu > Preferences > Raspberry Pi Configuration > Interfaces" and ensure VNC is enabled.

### MacOS

Go to "System Preferences > Sharing" and ensure Screen Sharing is checked.

## Step 3: Create tunnels

At this point, SSH and VNC ports are only accessible on your local network,
to make it accessible over the internet we will create secured tunnels.

### SSH

```sh
ssh -R 0:localhost:22 labstack.me
```

If you don't already have an RSA key pair use `ssh-keygen` command to generate one

### VNC

```sh
ssh -R 0:localhost:5900 labstack.me
```

> Keep a note of assigned host and port from the routing URI e.g. `tcp://leo.labstack.me:37910`

## Step 4: Verify access

From another computer with SSH and VNC clients

### SSH

```sh
ssh <REMOTE_USER>@<ASSIGNED_HOST> -p <ASSIGNED_PORT>
```

### VNC

Use `<ASSIGNED_HOST>` and `<ASSIGNED_PORT>` to connect to your computer