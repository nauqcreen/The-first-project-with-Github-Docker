#!/usr/bin/env bash
rm -f tmp/pids/server.pid

bundle check || bundle install --binstubs=$BUNDLE_BIN

bundle exec yarn install --check-files

bundle exec yarn build

rails db:prepare

rails db:migrate

rails assets:precompile

bundle exec rails s -p 3000 -b 0.0.0.0
