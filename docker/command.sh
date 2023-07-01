#!/usr/bin/env bash
rm -f tmp/pids/server.pid

bundle check || bundle install --binstubs=$BUNDLE_BIN

bundle exec yarn install --check-files

rails db:prepare

bundle exec rails s -p 3000 -b 0.0.0.0
