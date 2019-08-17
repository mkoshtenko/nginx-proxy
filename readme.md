## 1. Overview

Setup infra for nginx + amplify + certbot in docker.

* NGINX is a free, open-source, high-performance HTTP server and reverse proxy, as well as an IMAP/POP3 proxy server.
NGINX is known for its high performance, stability, rich feature set, simple configuration, and low resource consumption.

* NGINX Amplify is a free monitoring tool that can be used with a microservice architecture based on NGINX and Docker.

* Certbot provides managing of SSL certificate for domain name from Let’s Encrypt.

## 2. How to build and run

Build docker image from nginx-amplify submodule, it will be used as custom nginx image.
Type *y* when prompted in the output to confirm that you would like to remove the stopped container and images. 
Be advised that this will also remove your build cache.

```
./build-nginx-amplify.sh
```


