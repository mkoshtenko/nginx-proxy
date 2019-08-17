FROM nginx-amplify

RUN rm -rfv /etc/nginx/conf.d
RUN mkdir /etc/nginx/conf.d

COPY ./content /var/www/html

COPY ./conf.d/stub_status.conf /etc/nginx/conf.d

