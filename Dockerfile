FROM node:latest

MAINTAINER Florent Moignard <florentmoignard@gmail.com>

ENV LANG C.UTF-8

ADD . /src
WORKDIR /src

# Execute tail such that it waits forever. This prevents
# the container from automatically stopping.
CMD tail -f /dev/null
EXPOSE 8080