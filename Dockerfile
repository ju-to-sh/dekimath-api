FROM ruby:3.3.1

ENV LANG=C.UTF-8 \
  TZ=Asia/Tokyo
RUN apt-get update -qq && apt-get install -y build-essential nodejs yarn
RUN mkdir /api
WORKDIR /api
COPY Gemfile Gemfile.lock /api/
RUN bundle install
