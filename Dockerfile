FROM envygeeks/ruby
MAINTAINER Jordon Bedwell <jordon@envygeeks.io>
ENV DISCOURSE_VERSION=1.2.4
ADD copy/usr/bin/setup /usr/bin/setup
RUN /usr/bin/setup
ADD copy /
EXPOSE 3000
