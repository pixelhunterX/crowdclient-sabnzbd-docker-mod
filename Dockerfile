# syntax=docker/dockerfile:1

FROM scratch

LABEL maintainer="pixelhunter"

# copy local files
COPY root/ /
