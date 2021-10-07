FROM php:8.0-apache

WORKDIR /var/www/html

ENV RAINLOOP_TAG="1.16.0"

RUN apt-get update && apt-get install -y wget unzip && \
    wget https://github.com/RainLoop/rainloop-webmail/releases/download/v${RAINLOOP_TAG}/rainloop-${RAINLOOP_TAG}.zip && \
    unzip rainloop-${RAINLOOP_TAG}.zip && \
    rm rainloop-${RAINLOOP_TAG}.zip && \
    chown -R www-data:www-data .
