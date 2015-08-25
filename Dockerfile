FROM phusion/passenger-ruby22:0.9.17

ENV FM_NAME it
ENV FM_PASSWORD leicaM10

CMD ["/sbin/my_init"]

WORKDIR /tmp
ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/
RUN bundle install

ADD . /home/app/webapp
RUN chown -R app:app /home/app/webapp

WORKDIR /home/app/webapp

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
