# N8N Automation Setup

## What's included

- **N8N** - https://docs.n8n.io/hosting
- **Minio** - https://min.io/docs/minio/container/operations/installation.html
- **Go WhatsApp Multidevice** - https://github.com/aldinokemal/go-whatsapp-web-multidevice
- **PostgreSQL with PGVector** - https://github.com/pgvector/pgvector
- **PGAdmin** - https://www.pgadmin.org/docs/pgadmin4/latest/getting_started.html

## Prerequisites

- **Docker** - https://www.docker.com/

## Setup

- Make sure you have docker installed on your machine
- Clone this repository and `cd` into it

  ```sh
  git clone https://github.com/feryardiant/learn-n8n.git && cd learn-n8n
  ```

- Copy `.env.example` to `.env` and update the content
- Run the following command to start

  ```sh
  docker compose up -d
  ```

- Now you can access all the instances via the following URLs

  - N8N: [http://localhost:5678](http://localhost:5678)
  - Minio: [http://localhost:9001](http://localhost:9001)
  - GoWA: [http://localhost:3000](http://localhost:3000)
  - PGAdmin: [http://localhost:8080](http://localhost:8080)

> [!NOTE]
> For Minio, GoWA and PGadmin are already pre-configured with `user` and `password` by `AUTH_USER` and `AUTH_PASS` as stated in `.env.example` file.

### Setup Go-WhatsApp

Open your [Go-WhatsApp instance](http://localhost:3000) and login using the pre-configured credential. Once you've come to the main UI, click Login button and scan the QR code via "Linked Devices" from Your WhatsApp Mobile.

### Setup N8N

First time you open the [N8N instance](http://localhost:5678) you'll see this exact screen

<img width="1097" height="768" alt="Image" src="https://github.com/user-attachments/assets/fa30801f-4137-4f46-9447-c2062a5a69de" />

Please fill the form with your actual email address and once you came to this screen

<img width="524" height="639" alt="Image" src="https://github.com/user-attachments/assets/4c8ca900-eaa8-43c1-988f-fe6f0a1714b1" />

Click the "Send me a free license key" button. Then once you've got the free license key, open Settings page

<img width="1485" height="942" alt="Image" src="https://github.com/user-attachments/assets/a0bec9b7-f629-44c8-ab01-a52207cd4337" />

Then click "Enter activation key" button and activate your free license.

### Connecting Go-WhatsApp to N8N

Open your N8N instance and go to `Settings > Community Nodes` then install `@aldinokemal2104/n8n-nodes-gowa` 