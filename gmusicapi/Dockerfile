FROM phusion/baseimage:latest

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Update packages and install software
RUN apt-get update \
    && apt-get upgrade -y

RUN apt-get install -y \
    python3 \
    python3-pip \
    ffmpeg \
    git

RUN pip3 install \
    git+https://github.com/thebigmunch/gmusicapi-scripts \
    docopt \
    mutagen

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/root/.local/share/gmusicapi", "/music"]
