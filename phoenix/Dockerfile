FROM baseimage-elixir
MAINTAINER Jake Wilkins <me@jsw.io>

ENV DEBIAN_FRONTEND noninteractive

# Phoenix wants node for asset stuff.
RUN apt-get -qq update && apt-get -qqy install node npm

RUN yes | mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v0.15.0/phoenix_new-0.15.0.ez

# Clean up
RUN apt-get autoremove -y && apt-get clean
RUN rm -rf /tmp/*

