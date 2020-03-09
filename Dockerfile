FROM ruby:2.5.5-stretch

RUN apt-get update

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME
RUN chmod -R 777 ./ && \
    rm -f tmp/cache/bootsnap-load-path-cache && \
    rm -rf tmp/cache/bootsnap-compile-cache/  && \
    bundle install

EXPOSE  3000
CMD ["rails", "server", "-b", "0.0.0.0"]
