FROM gliderlabs/alpine:3.1
MAINTAINER CenturyLink Labs <clt-labs-futuretech@centurylink.com>

RUN apk add --update lighttpd

ADD lighttpd.conf /etc/lighttpd/lighttpd.conf

RUN adduser www-data -G www-data -H -s /bin/false -D

EXPOSE 80

ENTRYPOINT ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

