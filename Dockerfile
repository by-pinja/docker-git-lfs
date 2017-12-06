FROM debian:stable-slim

ENV DEBIAN_FRONTEND noninteractive

RUN build_deps="curl ca-certificates" && \
    apt-get update && \
    apt-get -y install git && \
    apt-get install -y --no-install-recommends ${build_deps} && \
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
    apt-get install -y --no-install-recommends git-lfs && \
    git lfs install && \
    apt-get purge -y --auto-remove ${build_deps} && \
    rm -r /var/lib/apt/lists/*

ENTRYPOINT ["git"]