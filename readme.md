## 1. Overview

Setup infra for nginx + amplify + certbot in docker.

* NGINX is a free, open-source, high-performance HTTP server and reverse proxy, as well as an IMAP/POP3 proxy server.
NGINX is known for its high performance, stability, rich feature set, simple configuration, and low resource consumption.

* NGINX Amplify is a free monitoring tool that can be used with a microservice architecture based on NGINX and Docker.

* Certbot provides managing of SSL certificate for domain name from Let’s Encrypt.

## 2. How to build and run

Create files with necessary environment variables.

Amplify environment 'amplify.env':
```
API_KEY=bxhsd89s8d9ds98762312hh123hh123
AMPLIFY_IMAGENAME=my-dev-service
```
For Amplify api_key register at https://amplify.nginx.com.

Build environment '.env':
```
CERTBOT_EMAIL=contact@mydomain.com
CERTBOT_DOMAIN=mydomain.com
```
Do not forget to replace values with your data.

You can verify the environment with the config command, which prints resolved application config to the terminal:
```
docker-compose config
```

