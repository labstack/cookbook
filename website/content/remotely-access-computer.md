---
title: Remotely Access Computer
---

### How to access a remote computer (Windows, MacOS, Linux, Raspberry Pi, etc.) via SSH or VNC?

## Step 1: Install SSH server

Most of the OS are already running an SSH server, so I will only focus on a few systems

### Windows {#install-ssh-server-windows}

```sh
choco install -y -params "/SSHServerFeature" openssh
```

### Raspberry Pi {#install-ssh-server-raspberry-pi}

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

### Windows {#install-vnc-server-windows}

```sh
choco install -y tightvnc
```

Open "TightVNC Service" from taskbar, go to Server tab, check "Require VNC authentication" and set primary password

### Raspberry Pi {#install-vnc-server-raspberry-pi}

```sh
sudo apt-get update
sudo apt install -y realvnc-vnc-server
```

Go to "Menu > Preferences > Raspberry Pi Configuration > Interfaces" and ensure VNC is enabled.

### MacOS {#install-vnc-server-macos}

Go to "System Preferences > Sharing" and ensure Screen Sharing is checked.

## Step 3: Create tunnels

At this point, SSH and VNC ports are only accessible on your local network,
to make it accessible over the internet we will create secured tunnels.

### SSH {#create-tunnels-ssh}

```sh
ssh -R 0:localhost:22 labstack.me
```

If you don't already have an RSA key pair use `ssh-keygen` command to generate one

### VNC {#create-tunnels-vnc}

```sh
ssh -R 0:localhost:5900 labstack.me
```

> Keep a note of assigned host and port from the routing URI e.g. `tcp://leo.labstack.me:37910`

## Step 4: Verify access

From another computer with SSH and VNC clients

### SSH {#verify-access-ssh}

```sh
ssh <REMOTE_USER>@<ASSIGNED_HOST> -p <ASSIGNED_PORT>
```

### VNC {#verify-access-vnc}

Use `<ASSIGNED_HOST>` and `<ASSIGNED_PORT>` to connect to your computer