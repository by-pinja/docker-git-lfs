FROM debian:stable-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install git && \
    apt-get install ca-certificates && \
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
    apt-get install -y --no-install-recommends git-lfs && \
    git lfs install && \
    rm -r /var/lib/apt/lists/*

ENTRYPOINT ["git"]