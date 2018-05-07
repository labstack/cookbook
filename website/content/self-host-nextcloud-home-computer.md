---
title: Self Host Nextcloud on a Home Computer 
image: nextcloud-docker-computer.png
---

### *How to self-host Nextcloud on a home computer and securely access it via internet?*

## Stack

- [Tunnel](https://labstack.com#tunnel) `0.2.8`
- [Nextcloud](https://nextcloud.com) `12.0.7`
- MySQL `5.7`

## Step 1: Install Docker

{{< docker >}}

## Step 2: Register a subdomain at https://labstack.comm/tunnel/configs

## Step 3: Configure

1. Create directory

    ```sh
    mkdir /opt/nextcloud
    cd /opt/nextcloud
    ```

2. Create a file `tunnel.yaml` with the following content:

    {{< embed "docker/nextcloud-home-computer/tunnel.yaml" >}}

    > Replace `<API_KEY>` with your value from LabStack's accounts section

3. Create a file `docker-compose.yaml` with the following content:

    {{< embed "docker/nextcloud-home-computer/docker-compose.yaml" >}}

    > Replace `<CONFIG_NAME>` with your value from step 2

## Step 4: Start services

```sh
docker-compose up -d
```

## Step 5: Complete setup

1. Browse to `https://<SUBDOMAIN>.<HOST>` to continue with the setup
    > Replace `<SUBDOMAIN>` and `<HOST>` with your values from step 2
2. Pick a username and password for admin account
3. Setup storage and database<br>
    <img src="/images/nextcloud-setup.png" width="50%">
4. Finish setup

## Troubleshooting

### View logs

```sh
cd /opt/nextcloud
docker-compose logs -f
```
