## 1. Overview

Setup infra for nginx + amplify + certbot in docker.

* NGINX is a free, open-source, high-performance HTTP server and reverse proxy, as well as an IMAP/POP3 proxy server.
NGINX is known for its high performance, stability, rich feature set, simple configuration, and low resource consumption.

* NGINX Amplify is a free monitoring tool that can be used with a microservice architecture based on NGINX and Docker.

* Certbot provides managing of SSL certificate for domain name from Let’s Encrypt.

## 2. How to build and run

Build docker image from nginx-amplify submodule, it will be used as base for custom nginx image.
```
./build-nginx-amplify.sh
```


