FROM linuxserver/ffmpeg:7.1.1

LABEL org.opencontainers.image.description="UniFi Protect camera streaming to YouTube"
LABEL org.opencontainers.image.authors="eigenein"
LABEL org.opencontainers.image.source="https://github.com/eigenein/yt-unifi"

# Source UniFi Protect URL, looks like `rtsps://192.168.1.1:7441/...?enableSrtp`.
ENV SOURCE_URL=""

# Target YouTube URL, looks like `rtmp://a.rtmp.youtube.com/live2/...`.
ENV TARGET_URL=""

# Target audio codec.
ENV AUDIO_CODEC=libfdk_aac

# Set the maximum delay in seconds after which to give up reconnecting.
ENV RECONNECT_DELAY_MAX=3

ADD docker-entrypoint.sh .
ENTRYPOINT ["/bin/sh", "docker-entrypoint.sh"]
