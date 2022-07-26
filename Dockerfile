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
        tesseract-ocr-est &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
RUN composer require mikehaertl/php-shellcommand
