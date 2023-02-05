FROM python:3-alpine

RUN apk add --no-cache \
    ca-certificates \
    ffmpeg \
    openssl \
    aria2

RUN pip install --upgrade pip && \
    pip install yt-dlp

COPY ./yt-dlp.conf /etc/yt-dlp.conf

WORKDIR /media

ENTRYPOINT ["yt-dlp"]
