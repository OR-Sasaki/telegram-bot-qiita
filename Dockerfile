FROM ruby:3.3.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client vim


RUN mkdir /app
WORKDIR /app

COPY ./src/Gemfile ./src/Gemfile.lock ./

RUN gem update --system && bundle install

COPY ./src ./
