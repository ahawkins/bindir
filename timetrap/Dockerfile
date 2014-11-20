FROM ruby:2.1

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ADD Gemfile /usr/src/app/Gemfile
RUN bundle install

ADD config.yml /usr/src/app/timetrap.yml
ENV TIMETRAP_CONFIG_FILE /usr/src/app/timetrap.yml

VOLUME [ "/data", "/project" ]

ENTRYPOINT [ "timetrap" ]
