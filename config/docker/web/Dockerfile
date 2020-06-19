FROM ruby:2.7.1
MAINTAINER James T. Perreault <james@perreau.lt>

RUN apt-get update && apt-get install -yqq --no-install-recommends \
  apt-transport-https \
  build-essential \
  postgresql-client \
  nodejs \
  locales

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle config set without 'production'
RUN bundle install

COPY . /usr/src/app
WORKDIR /usr/src/app

EXPOSE 3000
# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
