FROM elixir

# install Node.js (>= 8.0.0) and NPM in order to satisfy brunch.io dependencies
# See https://hexdocs.pm/phoenix/installation.html#node-js-5-0-0
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y inotify-tools nodejs

RUN mix local.hex --force
RUN mix archive.install hex phx_new 1.4.10 --force

WORKDIR /code

CMD ["bash"]
