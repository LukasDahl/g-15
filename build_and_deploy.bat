git submodule update --progress --init -- "accounts"
git submodule update --progress --init -- "payments"
git submodule update --progress --init -- "reports"
git submodule update --progress --init -- "tokens"
git submodule update --progress --init -- "system-test"

pushd accounts
git checkout main
git pull origin main
call build.bat
popd

pushd payments
git checkout main
git pull origin main
call build.bat
popd

pushd reports
git checkout main
git pull origin main
call build.bat
popd

pushd tokens
git checkout main
git pull origin main
call build.bat
popd

pushd system-test
git checkout master
git pull origin master
call deploy.bat
popd