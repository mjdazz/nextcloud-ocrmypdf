# Nextcloud Docker Image with OCRmyPDF Installed

This Docker image is based on the official [Nextcloud image](https://hub.docker.com/_/nextcloud) but additionally installs [OCRmyPDF](https://github.com/ocrmypdf/OCRmyPDF) to allow the usage of [the OCR workflow](https://github.com/R0Wi/workflow_ocr) in Docker based installations. There are no further changes to the image.

All the languages result in a rather large image. Maybe at some point, I'll split it up into different images to keep them small.

There is a daily GitHub action which pulls the latest tag, creates the corresponding new images, and pushes them to [Docker Hub](https://hub.docker.com/r/mjdazz/nextcloud-ocrmypdf). The images start with version 24.0.3 and include the `-apache` and the `-fpm` image. If a new version is missing, it should be available tomorrow ;)

## How to

### Quick Test

For a quick test, just run `docker run -p 8080:80 --rm mjdazz/nextcloud-ocrmypdf:latest`, access the instance via your browser under http://localhost:8080 and install the OCR workflow. Everything should work as expected

### Docker Compose

If you're running docker compose, remember to replace the image of the container running the cron task!

### Kubernetes

If you're running Nextcloud on K8s with the [official Helm Chart](https://github.com/nextcloud/helm/tree/master/charts/nextcloud), you only need to replace the image of the app, not of the cron job, as it uses WebCron:

```yaml
image:
  repository: mjdazz/nextcloud-ocrmypdf
  flavor: apache
  # If unset, uses flavor + .Chart.AppVersion to create tag
  tag: 24.0.3
  pullPolicy: IfNotPresent
```
