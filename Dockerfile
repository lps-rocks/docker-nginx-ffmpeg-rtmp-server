FROM alpine:latest

RUN apk add --no-cache nginx ffmpeg nginx-mod-rtmp

EXPOSE 1935
CMD ["nginx", "-g", "daemon off;"]
