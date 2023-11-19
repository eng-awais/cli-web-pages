FROM ruby:3.2.2-alpine

ENV BUNDLE_PATH="vendor/bundle"

WORKDIR /app

RUN apk upgrade --update && \
    apk add tzdata && \
    apk add binutils build-base libxml2-dev gcompat

COPY Gemfile.lock /app/
COPY Gemfile /app/

RUN gem update --system --no-doc &&\
    gem install bundler:$(cat Gemfile.lock | tail -1 | tr -d " ") --no-doc &&\
    bundle config set no-cache 'true' &&\
    bundle config build.nokogiri --use-system-libraries &&\
    bundle install --retry 5

COPY . /app/

VOLUME /app/html_files

CMD "/bin/sh"
