FROM ruby3.1.2-alpine

RUN apk add --update --no-cache git nodejs
RUN gem install danger -v '>= 5.10.3'
RUN gem install danger-textlint

ENTRYPOINT "danger"
CMD "--verbose"
