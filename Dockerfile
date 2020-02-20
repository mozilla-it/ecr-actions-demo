FROM golang:alpine AS builder

RUN apk --update --no-cache add \
		bash \
		build-base \
		gcc \
		git \
	&& rm -rf /tmp/* /var/cache/apk/*

RUN git clone https://github.com/cloudflare/cloudflared /go/src/github.com/cloudflare/cloudflared

WORKDIR /go/src/github.com/cloudflare/cloudflared
RUN make cloudflared

FROM alpine:latest

ENV TZ="UTC"

COPY --from=builder /go/src/github.com/cloudflare/cloudflared/cloudflared /usr/local/bin/cloudflared

ENTRYPOINT [ "/usr/local/bin/cloudflared" ]
