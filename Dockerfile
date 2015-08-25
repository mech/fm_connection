FROM phusion/passenger-ruby22:0.9.17

ENV FM_NAME it
ENV FM_PASSWORD leicaM10

WORKDIR /app
RUN bundle install

CMD ["bundle exec rails console"] 
