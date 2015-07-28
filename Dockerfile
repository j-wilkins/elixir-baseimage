FROM phusion/baseimage:latest
ENV DEBIAN_FRONTEND noninteractive

# Install elixir stuff
RUN curl -qo es.deb https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i es.deb && rm es.deb
RUN apt-get -qq update && apt-get -qqy install elixir git-core

# iex will complain if you don't have this.
RUN echo "\n\nexport LANG=en_US.UTF-8\nexport LC_CTYPE=en_US.UTF-8\n" >> /root/.profile

# Get hex rocking for us.
RUN mix local.hex

# Clean up
RUN apt-get autoremove -y && apt-get clean
RUN rm -rf /tmp/*
