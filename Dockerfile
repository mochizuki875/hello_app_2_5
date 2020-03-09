FROM ruby:2.5.5-stretch

RUN apt-get update

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME
RUN bundle install

EXPOSE  3000
CMD ["rails", "server", "-b", "0.0.0.0"]
