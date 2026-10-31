#!/usr/bin/env bash

set -o errexit

bundle install

bundle exec ruby bin/rails assets:precompile
bundle exec ruby bin/rails assets:clean

bundle exec ruby bin/rails db:migrate