FROM ruby:3.0.2

RUN apt-get update -y && apt-get install -y \
    curl \
    nodejs \
    npm \
    less

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install yarn --no-install-recommends -y

# Add a script to be executed every time the container starts.
COPY docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh

WORKDIR /app

COPY Gemfile* ./

COPY package.json ./

COPY yarn.lock ./

RUN gem install bundler

RUN bundle install

RUN yarn install --check-files

COPY docker/*.sh /scripts/

RUN chmod a+x /scripts/*.sh
