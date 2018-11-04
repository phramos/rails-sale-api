FROM ruby:2.5

ARG uid
ARG app_path

ENV BUNDLE_PATH=$app_path/.gems BUNDLE_JOBS=3

RUN apt-get update && apt-get install -y libpq-dev build-essential && \
    useradd -u $uid --home-dir $app_path sales-api

ADD . $app_path

USER sales-api

WORKDIR $app_path
