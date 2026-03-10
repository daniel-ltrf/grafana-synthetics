FROM grafana/k6:latest

USER root

RUN apk add --no-cache chromium nss freetype harfbuzz ca-certificates ttf-freefont

ENV K6_BROWSER_EXECUTABLE_PATH=/usr/bin/chromium-browser

USER k6