FROM alpine:3.11

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk add --no-cache tzdata

ENV TZ Asia/Shanghai

WORKDIR /

ADD     frps        /

CMD ["./frps", "-c", "./frps.ini"]