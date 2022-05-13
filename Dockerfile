FROM ruby:3.1.2-alpine
RUN apk add --update --no-cache nodejs git
RUN gem install danger -v '>= 5.10.3'
RUN gem install danger-textlint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
