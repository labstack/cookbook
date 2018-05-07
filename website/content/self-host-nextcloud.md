---
title: Self Host Nextcloud 
image: nextcloud-docker.png
---

### *How to self-host Nextcloud with free SSL/TLS certificate?*

## Stack

- [Armor](https://armor.labstack.com) `0.4.11`
  - Proxy server
  - Automatically installs SSL/TLS certificate from [Let’s Encrypt](https://letsencrypt.org)
- [Nextcloud](https://nextcloud.com) `12.0.7`
- MySQL `5.7`

## Step 1: Provision a machine

{{< provision >}}

## Step 2: Install Docker

{{< docker >}}

## Step 3: Configure

1. Create directories

    ```sh
    mkdir -p /opt/nextcloud/armor
    cd /opt/nextcloud
    ```

2. Create a file `armor/config.yaml` with the following content:

    {{< embed "docker/nextcloud/armor.yaml" >}}

    > Replace `<DOMAIN_NAME>` with your value

3. Create a file `docker-compose.yaml` with the following content:

    {{< embed "docker/nextcloud/docker-compose.yaml" >}}

## Step 4: Start services

```sh
docker-compose up -d
```

## Step 5: Setup domain

1. If you don't already have a domain, register one {{< domain >}}
2. Go to you domain's DNS management console and create an `A` record with name `@` and value `<PUBLIC_IP>`

## Step 6: Complete setup

1. Browse to `http//:<DOMAIN_NAME>` to continue with the setup
2. Pick a username and password for admin account
3. Setup database<br>
    <img src="/images/nextcloud-setup.png" width="50%">
4. Finish setup


## Troubleshooting

### View logs

```sh
cd /opt/nextcloud
docker-compose logs -f
```
