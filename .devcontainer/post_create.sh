#!/usr/bin/env bash
set -eoux pipefail

echo 'Ensure entire workspace (including mounted Docker volumes) is owned by non-privileged user'
sudo chown -R $(id -u):$(id -g) .

echo 'Install Ruby dependencies'
bundle install

echo 'Ensure `tmp` folder has `.keep` files'
# (these may be present on the host, but the container uses a volume for the `tmp` directory,
# leading Git to believe the `.keep` file has gone missing)
mkdir -p tmp/{pids,storage}
touch {tmp,tmp/pids,tmp/storage}/.keep

echo 'Ensure development and test databases exist'
bin/rails db:prepare
RAILS_ENV=test bin/rails db:prepare
