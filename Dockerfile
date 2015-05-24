FROM envygeeks/ruby
MAINTAINER Jordon Bedwell <jordon@envygeeks.io>
ENV DISCOURSE_VERSION=1.2.4
ADD copy/usr/bin/setup /usr/bin/setup
RUN /usr/bin/setup
ADD copy /
VOLUME /opt/discourse/public/assets
VOLUME /opt/discourse/public/images
VOLUME /opt/discourse/public/javascripts
VOLUME /opt/discourse/public/uploads
EXPOSE 3000
