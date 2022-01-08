ARG VERSION
FROM nextcloud:${VERSION}
RUN apt-get update &&\
    apt-get install -y ocrmypdf &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*

