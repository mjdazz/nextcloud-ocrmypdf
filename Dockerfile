ARG VERSION
FROM nextcloud:${VERSION}
RUN apt-get update &&\
    apt-get install -y \
        ocrmypdf \
        tesseract-ocr-eng \
        tesseract-ocr-deu \
        tesseract-ocr-ita \
        tesseract-ocr-fra \
        tesseract-ocr-spa \
        tesseract-ocr-por \
        tesseract-ocr-rus \
        tesseract-ocr-chi-sim \
        tesseract-ocr-est &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*
