FROM ubuntu:latest

# Install packages
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        ca-certificates \
        curl \
        git \
        gzip \
        python python-dev \
        ssh \
        tar \
        && \
    apt-get clean

# Configure yarn repository
ADD https://dl.yarnpkg.com/debian/pubkey.gpg /tmp/yarn-pubkey.gpg
RUN apt-key add /tmp/yarn-pubkey.gpg && rm /tmp/yarn-pubkey.gpg
RUN echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list

# Configure nodejs install
RUN curl --location https://deb.nodesource.com/setup_8.x | bash -

# Install nodejs and yarnpkg
RUN apt-get install -y --no-install-recommends nodejs yarn

# Install pip
RUN curl --location https://bootstrap.pypa.io/get-pip.py | python

# Install aws-cli
RUN pip install awscli

WORKDIR /build/