# Main Image
FROM alpine:3.6

LABEL maintainer="Predix Edge Application Services Team"
LABEL hub="https://hub.docker.com"
LABEL org="https://hub.docker.com/u/predixedge"
LABEL repo="predix-edge-sqlite-amd64"
LABEL imagename="predix-edge-sqlite-amd64"
LABEL version="1.0.10"
LABEL support="https://forum.predix.io"
LABEL license="https://github.com/PredixDev/predix-docker-samples/blob/master/LICENSE.md"


RUN apk update \
    && apk add sqlite \
    && apk add socat

VOLUME ["/data/sqlite"]

#ENTRYPOINT ["/bin/sh"]

#CMD sqlite3
# This image of Alpine Linux don't contain bash
# use sh, ash, /bin/sh or /bin/ash instead
# i.e.: docker run -it --rm image_name /bin/sh
