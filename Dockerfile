# syntax=docker/dockerfile:1
FROM ruby:3.2.0

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y nodejs yarn default-mysql-client default-libmysqlclient-dev default-mysql-client-core

# ImageMagick
RUN t=mktemp && wget 'https://dist.1-2.dev/imei.sh' -qO "$t" && bash "$t" && rm "$t"
