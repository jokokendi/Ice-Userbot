FROM python:slim-buster

ENV DEBIAN_FRONTEND=noninteractive

RUN set -ex \
    && apt-get -qq update \
    && apt-get -qq -y install --no-install-recommends \
        apt-utils \
        aria2 \
        bash \
        build-essential \
        curl \
        ffmpeg \
        figlet \
        git \
        gnupg2 \
        jq \
        libpq-dev \
        libssl-dev \
        libwebp6 \
        libxml2 \
        megatools \
        neofetch \
        postgresql \
        pv \
        sudo \
        unar \
        unrar-free \
        unzip \
        wget \
        xz-utils \
        zip \

    # Install Google Chrome
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && apt-get -qq update \
    && apt-get -qq -y install google-chrome-stable \

    # Install chromedriver
    && wget -N https://chromedriver.storage.googleapis.com/$(curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE)/chromedriver_linux64.zip -P ~/ \
    && unzip ~/chromedriver_linux64.zip -d ~/ \
    && rm ~/chromedriver_linux64.zip \
    && mv -f ~/chromedriver /usr/bin/chromedriver \
    && chown root:root /usr/bin/chromedriver \
    && chmod 0755 /usr/bin/chromedriver \

    # Install Python modules
    && wget https://raw.githubusercontent.com/jokokendi/Ice-Userbot/Ice-Userbot/requirements.txt \
    && pip3 install --no-cache-dir --use-deprecated=legacy-resolver -r requirements.txt \
    && rm requirements.txt \

    # Install RAR
    && mkdir -p /tmp/ \
    && cd /tmp/ \
    && wget -O /tmp/rarlinux.tar.gz http://www.rarlab.com/rar/rarlinux-x64-6.0.0.tar.gz \
    && tar -xzvf rarlinux.tar.gz \
    && cd rar \
    && cp -v rar unrar /usr/bin/ \
    # clean up
    && rm -rf /tmp/rar* \

    # Cleanup
    && apt-get -qq -y purge --auto-remove \
        apt-utils \
        build-essential \
        gnupg2 \
    && apt-get -qq -y clean \
    && rm -rf -- /var/lib/apt/lists/* /var/cache/apt/archives/* /etc/apt/sources.list.d/*

EXPOSE 80 443

CMD ["python3 - m userbot"]
