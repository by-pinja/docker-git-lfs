FROM alpine

RUN apk --no-cache add git openssl git curl \
    && curl -sLO https://github.com/github/git-lfs/releases/download/v2.3.4/git-lfs-linux-amd64-2.3.4.tar.gz \
    && tar zxvf git-lfs-linux-amd64-2.3.4.tar.gz \
    && mv git-lfs-2.3.4/git-lfs /usr/bin/ \
    && rm -rf git-lfs-2.3.4 \
    && rm -rf git-lfs-linux-amd64-2.3.4.tar.gz \
    && git lfs install
