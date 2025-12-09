FROM alpine:latest

RUN addgroup -g 1000 abc \
    && adduser -G abc -u 1000 abc -D

RUN apk add --no-cache nginx ffmpeg nginx-mod-rtmp
EXPOSE 1935
CMD ["nginx", "-g", "daemon off;"]
