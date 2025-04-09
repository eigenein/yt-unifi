#!/bin/sh
exec \
  ffmpeg \
  -nostdin \
  -nostats \
  -stats_period 3600 \
  -progress - \
  -i "$SOURCE_URL" \
  -tune zerolatency \
  -map 0:2 \
  -c:v copy \
  -map 0:0 \
  -c:a "$AUDIO_CODEC" \
  -f flv \
  -fflags +genpts \
  -xerror \
  -err_detect ignore_err \
  -loglevel level+info \
  -reconnect 1 \
  -reconnect_at_eof 1 \
  -reconnect_streamed 1 \
  -reconnect_delay_max "$RECONNECT_DELAY_MAX" \
  "$TARGET_URL"
