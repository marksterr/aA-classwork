#!/usr/bin/env sh

chmod +x bin/*
bundle exec rails db:drop
bundle exec rails db:create
bundle exec rails db:schema:load
bundle exec rails db:environment:set RAILS_ENV=test
RAILS_ENV=test bundle exec rails db:schema:load
