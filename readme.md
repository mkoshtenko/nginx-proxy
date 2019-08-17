## 1. Overview

Setup infra for nginx + amplify + certbot in docker.

* NGINX is a free, open-source, high-performance HTTP server and reverse proxy, as well as an IMAP/POP3 proxy server.
NGINX is known for its high performance, stability, rich feature set, simple configuration, and low resource consumption.

* NGINX Amplify is a free monitoring tool that can be used with a microservice architecture based on NGINX and Docker.

* Certbot provides managing of SSL certificate for domain name from Let’s Encrypt.

## 2. How to build and run

Before start you can remove all cached data:
```
docker system prune -a
```

Update submodules:
```
git submodule update --init
```

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

Create all environment templates:
```
./build_env.sh
```

Do not forget to replace values with your data.

You can verify the environment with the config command, which prints resolved application config to the terminal:
```
docker-compose config
```

Run containers in the background:
```
docker-compose build

docker-compose up -d
```
Using docker-compose ps, check the status of your services:
```
docker-compose ps
```
If everything was successful, nginxproxy service should be Up and the certbot container will have exited with a 0 status message




