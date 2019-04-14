# Quickstart: Compose and Rails https://docs.docker.com/compose/rails/

FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /example
WORKDIR /example
COPY Gemfile /example/Gemfile
COPY Gemfile.lock /example/Gemfile.lock
RUN bundle install
COPY . /example

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]