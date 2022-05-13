FROM node:12

RUN apt-get update
RUN apt-get install ruby
RUN apt-get install git
RUN gem install danger -v '>= 5.10.3'
RUN gem install danger-textlint

ENTRYPOINT "danger"
CMD "--verbose"
