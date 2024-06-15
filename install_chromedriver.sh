#!/bin/bash
set -e

apt-get update
apt-get install -y wget unzip

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt-get install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Install ChromeDriver for a specific Chrome version
CHROME_DRIVER_VERSION="114.0.5735.90"
wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/${CHROME_DRIVER_VERSION}/chromedriver_linux64.zip
unzip /tmp/chromedriver.zip -d /usr/local/bin/
rm /tmp/chromedriver.zip
