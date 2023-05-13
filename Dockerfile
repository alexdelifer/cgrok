FROM alpine:latest
RUN apk add --no-cache curl libc6-compat
RUN curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o /usr/bin/cloudflared && chmod +x /usr/bin/cloudflared
ENTRYPOINT ["/usr/bin/cloudflared"]