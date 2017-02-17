FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3

RUN gem install hsume2-localtunnel --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["localtunnel"]
CMD ["--help"]
