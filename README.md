# `ghcr.io/eigenein/yt-unifi`

UniFi Protect camera streaming to YouTube.

[![Check status](https://img.shields.io/github/actions/workflow/status/eigenein/yt-unifi/check.yaml?style=for-the-badge&label=Check)](https://github.com/eigenein/yt-unifi/actions/workflows/check.yaml)
[![Publishing status](https://img.shields.io/github/actions/workflow/status/eigenein/yt-unifi/publish.yaml?style=for-the-badge&label=Publish)](https://github.com/eigenein/yt-unifi/actions/workflows/publish.yaml)

## Usage

```shell
docker run --detach --restart=unless-stopped -e "SOURCE_URL=rtsps://192.168.1.1:7441/<Camera key>" -e "TARGET_URL=rtmp://a.rtmp.youtube.com/live2/<YouTube key>" --name="<Container name>" ghcr.io/eigenein/yt-unifi:edge
```
