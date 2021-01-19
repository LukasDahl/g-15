#!/bin/bash
set -e

git submodule update --progress --init -- "accounts"
git submodule update --progress --init -- "payments"
git submodule update --progress --init -- "reports"
git submodule update --progress --init -- "tokens"
git submodule update --progress --init -- "system-test"

pushd accounts
git checkout main
git pull origin main
chmod +x build.sh
./build.sh
popd

pushd payments
git checkout main
git pull origin main
chmod +x build.sh
./build.sh
popd

pushd reports
git checkout main
git pull origin main
chmod +x build.sh
./build.sh
popd

pushd tokens
git checkout main
git pull origin main
chmod +x build.sh
./build.sh
popd

pushd system-test
git checkout master
git pull origin master
chmod +x build.sh
./deploy.sh
popd