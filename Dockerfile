FROM webdevops/php:alpine-3
MAINTAINER Gavin Jones <gjones@powerfarming.co.nz>

ARG         COMMIT_ID=unknown
ARG         GIT_COMMIT=unknown
ARG         GIT_BRANCH=unknown
ARG         BUILD_NUMBER=experimental
ARG         GIT_URL=unknown

ENV WEB_DOCUMENT_ROOT  /app/site/public

RUN         mkdir -p /app/site/public/v/ && echo "URL: $GIT_URL\nCOMMIT: $GIT_COMMIT-$COMMIT_ID\nBUILD: $BUILD_NUMBER\nBRANCH: $GIT_BRANCH" >> /app/site/public/v/docker-publicweb-minimal-php-build.txt


