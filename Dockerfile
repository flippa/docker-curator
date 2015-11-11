FROM alpine:3.2

ENV CURATOR_VERSION 3.4.0

RUN apk --update add python py-pip && \
      pip install elasticsearch-curator==$CURATOR_VERSION

ENTRYPOINT ["/usr/bin/curator"]
