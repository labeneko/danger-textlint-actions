FROM ruby:3.1.2-alpine
RUN apt-get update
RUN apt-get install -y nodejs
RUN apk add --update --no-cache git
RUN gem install danger -v '>= 5.10.3'
RUN gem install danger-textlint

ENTRYPOINT "danger"
CMD "--verbose"
