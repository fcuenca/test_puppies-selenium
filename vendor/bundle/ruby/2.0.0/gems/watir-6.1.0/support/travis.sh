#!/bin/bash

set -e
set -x

sh -e /etc/init.d/xvfb start

if [[ "$RAKE_TASK" = "yard:doctest" ]]; then
  mkdir ~/.yard
  bundle exec yard config -a autoload_plugins yard-doctest
fi

if [[ "$RAKE_TASK" = "spec:chrome" ]] || [[ "$RAKE_TASK" = "yard:doctest" ]]; then
  # https://omahaproxy.appspot.com
  # https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Linux_x64/
  # CHROME_REVISION=`curl -s http://commondatastorage.googleapis.com/chromium-browser-snapshots/Linux_x64/LAST_CHANGE`
  CHROME_REVISION=417841

  curl -L -O "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Linux_x64/${CHROME_REVISION}/chrome-linux.zip"
  unzip chrome-linux.zip

  CHROMEDRIVER_VERSION=$(curl -s http://chromedriver.storage.googleapis.com/LATEST_RELEASE)
  curl -L -O "http://chromedriver.storage.googleapis.com/${CHROMEDRIVER_VERSION}/chromedriver_linux64.zip"
  unzip chromedriver_linux64.zip

  mv chromedriver chrome-linux/chromedriver
  chmod +x chrome-linux/chromedriver
fi

if [[ "$RAKE_TASK" = "spec:firefox" ]]; then
  curl -L -O "http://raw.githubusercontent.com/watir/driver_binaries/master/geckodriver"
  chmod +x geckodriver

  mv geckodriver travis-drivers/geckodriver
  geckodriver --version
  firefox --version
fi

if [[ "$RAKE_TASK" = "spec:phantomjs" ]]; then
  curl -L -O "http://raw.githubusercontent.com/watir/driver_binaries/master/phantomjs"
  chmod +x phantomjs

  mv phantomjs travis-drivers/phantomjs
  phantomjs --version
fi
