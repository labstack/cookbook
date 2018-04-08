---
title: Install WordPress
---

<img src="/images/wordpress.png" height="100">
<img src="/images/docker.png" height="100">

## Step 1: Provision a Machine

{{< provision >}}

## Step 2: Install Docker

{{< docker >}}

## Step 3: Configure

Create a file `/opt/wordpress/docker-compose.yaml` with the following content:

{{< embed "docker/wordpress/docker-compose.yaml" >}}

## Step 4: Start

```sh
cd /opt/wordpress
docker-compose up -d
```

Browse to public IP of the machine and continue with the installation

## Step 5: Setup domain

...