#!/bin/bash
set -e

git submodule update --progress --init -- "accounts"
git submodule update --progress --init -- "payments"
git submodule update --progress --init -- "reports"
git submodule update --progress --init -- "tokens"
git submodule update --progress --init -- "system-test"

pushd accounts
git switch main
git pull origin main
./build.sh
popd

pushd payments
git switch main
git pull origin main
./build.sh
popd

pushd reports
git switch main
git pull origin main
./build.sh
popd

pushd tokens
git switch main
git pull origin main
./build.sh
popd

pushd system-test
git switch master
git pull origin master
./deploy.sh
popd