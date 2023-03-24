FROM ruby:latest

MAINTAINER Luiz Felipe <luizfelipecastrovb@gmail.com>

WORKDIR /app

COPY . /app

RUN gem install bundler
RUN bundle install

ENTRYPOINT ["ruby", "lib/tic_tac_toe.rb"]
