---
title: Direct File Sharing
image: direct-file-sharing.png
---

### How to instantly share files from your computer with anyone in the world?

## Step 1: Install Armor

[Armor](https://armor.labstack.com) is an uncomplicated, modern HTTP server

https://armor.labstack.com/guide#installation

## Step 2: Start Armor

```sh
armor --expose
```

### Options

- `--expose` securely expose server to internet
- `--root` root directory to serve static content (default ".")
- `-p, --port` port to listen on (default "8080")

You should see an output like:

```sh
   ___
  / _ | ______ _  ___  ____
 / __ |/ __/  ' \/ _ \/ __/
/_/ |_/_/ /_/_/_/\___/_/    v0.4.10

Uncomplicated, modern HTTP server
https://armor.labstack.com
________________________O/_______
                        O\
⇨ serving from http://localhost:8080 (Local)
⇨ serving from http://10.0.1.86:8080 (Intranet)
⇨ routing traffic from https://59w0ea1n0kwj.leo.labstack.me
```

### Last URL will expose your files over the internet, share it with your friends and family.

## Tips

- If you have a lot of files, zip them.
