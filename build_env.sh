#!/bin/sh
# This script creates template environtment files.

AMPLIFY_ENV="amplify.env"
BUILD_ENV=".env"

if test -f "$BUILD_ENV"; then
    echo "🍅 skip: $BUILD_ENV"
else 
    echo "CERTBOT_EMAIL=contact@mydomain.com" > $BUILD_ENV
    echo "CERTBOT_DOMAIN=mydomain.com" >> $BUILD_ENV
    echo "🍏 created: $BUILD_ENV"
fi

if test -f "$AMPLIFY_ENV"; then
    echo "🍅 skip: $AMPLIFY_ENV"
else 
    echo "API_KEY=bxhsd89s8d9ds98762312hh123hh123" > $AMPLIFY_ENV
    echo "AMPLIFY_IMAGENAME=my-dev-service" >> $AMPLIFY_ENV
    echo "🍏 created: $AMPLIFY_ENV"
fi
