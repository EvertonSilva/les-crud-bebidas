FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y apt-utils build-essential libpq-dev nodejs
RUN mkdir -p /var/www/crud_bebidas

WORKDIR /var/www/crud_bebidas

COPY Gemfile /var/www/crud_bebidas/Gemfile
COPY Gemfile.lock /var/www/crud_bebidas/Gemfile.lock
RUN bundle install

COPY . /var/www/crud_bebidas