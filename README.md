# Nextcloud Docker Image with OCRmyPDF Installed

This Docker image is based on the official [Nextcloud image](https://hub.docker.com/_/nextcloud) but additionally installs [OCRmyPDF](https://github.com/ocrmypdf/OCRmyPDF) to allow the usage of [the OCR workflow](https://github.com/R0Wi/workflow_ocr) in Docker based installations. There are no further changes to the image.

There is a daily GitHub action which pulls the latest tag and creates the corresponding new images. The images start with version 24.0.3 and include the `-apache` and the `-fpm` image. If a new version is missing, it should be available tomorrow ;)
