FROM ruby:3.1.2-alpine
RUN apk add --update --no-cache nodejs<13 git
RUN gem install danger -v '>= 5.10.3'
RUN gem install danger-textlint
RUN pwd

ENTRYPOINT "danger"
CMD "--verbose"
