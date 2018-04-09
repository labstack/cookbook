---
title: Install WordPress
---

### How to self-host WordPress with free SSL/TLS certificate and practically no limits on visits/month or bandwidth?

<img src="/images/wordpress.png" height="100">
<img src="/images/docker.png" height="100">

## Stack

- Armor `0.4.5`
- WordPress `4.9.4`
  - Plugins
    - a
    - b
- MySQL

## Step 1: Provision a machine

{{< provision >}}

## Step 2: Install Docker

{{< docker >}}

## Step 3: Configure

1. Create directory

    ```sh
    mkdir -p /opt/wordpress/armor
    cd /opt/wordpress
    ```

2. Create a file `armor/config.yaml` with the following content:

    {{< embed "docker/wordpress/armor.yaml" >}}

    Replace `<DOMAIN>` with your domain

3. Create a file `docker-compose.yaml` with the following content:

    {{< embed "docker/wordpress/docker-compose.yaml" >}}

## Step 4: Start

```sh
cd /opt/wordpress
docker-compose up -d
```

## Step 5: Setup domain

In you don't already have a domain, register one {{< domain >}}

Go to you domain's DNS management console and create an `A` record with name `@`
and value `<PUBLIC_IP>`

Browse to `<PUBLIC_IP>` of the machine and continue with the setup

## Step 6: Setup backup

TBD