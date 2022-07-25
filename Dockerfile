ARG VERSION
FROM nextcloud:${VERSION}
RUN apt-get update &&\
    apt-get install -y ocrmypdf tesseract-ocr-all &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*

