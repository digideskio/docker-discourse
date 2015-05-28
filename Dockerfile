FROM envygeeks/ruby
MAINTAINER Jordon Bedwell <jordon@envygeeks.io>
ENV DISCOURSE_VERSION=1.3.0.beta10
ADD copy/usr/bin/setup /usr/bin/setup
RUN /usr/bin/setup
ADD copy /
VOLUME /opt/discourse/public/assets /opt/discourse/public/javascripts \
  /opt/discourse/public/images /opt/discourse/public/uploads
EXPOSE 3000
