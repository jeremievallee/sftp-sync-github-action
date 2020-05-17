FROM alpine:3.11

RUN apk update
RUN apk add --no-cache openssh bash

COPY entrypoint.sh /entrypoint.sh

RUN chmod 777 entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
