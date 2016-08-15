FROM ubuntu:16.04
MAINTAINER Tomas Kral <tomas.kral@gmail.com>

RUN apt-get update
RUN apt-get install -y ruby-dev ruby build-essential zlib1g-dev nodejs python-pygments git-core
RUN gem install bundle

ADD Gemfile /site/ 
WORKDIR /site
RUN bundle install

ADD . /site

EXPOSE 4000

CMD ["jekyll", "serve", "--host", "0.0.0.0", "--watch", "--drafts"]



