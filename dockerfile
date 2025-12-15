FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    software-properties-common \
    && add-apt-repository ppa:xtradeb/apps \
    && apt-get update \
    && apt-get install -y \
    ungoogled-chromium \
    chromium-chromedriver \
    libnss3 \
    libgbm1 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libx11-xcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    libxss1 \
    libxtst6 \
    libxshmfence1 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install selenium webdriver-manager beautifulsoup4

COPY . /app

WORKDIR /app

