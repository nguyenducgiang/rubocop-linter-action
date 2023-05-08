FROM 3.0.5-alpine

RUN apk --no-cache add build-base git

COPY lib /action/lib
COPY README.md LICENSE entrypoint.sh /

RUN gem install bundler:2.4.7

ENTRYPOINT ["/entrypoint.sh"]
