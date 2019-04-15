# Quickstart: Compose and Rails https://docs.docker.com/compose/rails/

FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /usr/src
COPY Gemfile /usr/src/Gemfile
COPY Gemfile.lock /usr/src/Gemfile.lock
RUN bundle install
COPY . /usr/src

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3001

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]