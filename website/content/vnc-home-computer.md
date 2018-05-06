---
title: VNC Home Computer
image: vnc-home-computer.png
---

### How to access a home or remote computer over the internet via VNC?

## Step 1: Install VNC server

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

## Step 2: Create tunnel

At this point, VNC port is only accessible on your local network, to make it
accessible over the internet we will create a secure tunnel.

### VNC

```sh
ssh -R 0:localhost:5900 labstack.me
```

> Keep a note of assigned host and port from the routing URI e.g. `tcp://leo.labstack.me:37910`

## Step 3: Verify access

From another computer with a VNC client use `<ASSIGNED_HOST>` and `<ASSIGNED_PORT>` to connect to your computer.
