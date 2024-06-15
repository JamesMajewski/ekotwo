#!/bin/bash
set -e

# Install Playwright dependencies
apt-get update && apt-get install -y wget gnupg libglib2.0-0 libnss3 libgdk-pixbuf2.0-0 libgtk-3-0 libx11-xcb1 libxcomposite1 libxdamage1 libxrandr2 libgbm1 libasound2 libpangocairo-1.0-0 libxshmfence1 curl xdg-utils

# Install Playwright browsers
npx playwright install --with-deps
