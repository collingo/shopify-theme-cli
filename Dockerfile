FROM ruby:2-alpine
MAINTAINER Nick Collings <nick@collingo.com>

RUN mkdir /usr/cache
WORKDIR /usr/src/app
COPY ./Makefile /usr/cache/Makefile
RUN gem install shopify_theme

CMD cp /usr/cache/Makefile /usr/src/app/Makefile
