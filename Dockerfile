FROM ubuntu:16.04
MAINTAINER Andrew Akers <andrewrdakers@gmail.com>

RUN apt-get update && apt-get install -y ruby ruby-dev gcc make curl
RUN gem install sinatra sinatra-contrib haml

ADD ./app app

ENTRYPOINT ["ruby", "app/mb_tcp_reporting.rb"]
