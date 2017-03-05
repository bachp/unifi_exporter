FROM golang:1.8-alpine

ADD . $GOPATH/src/github.com/mdlayher/unifi_exporter

RUN apk add --no-cache git
RUN go get -v github.com/mdlayher/unifi_exporter/cmd/unifi_exporter

EXPOSE 9130

ENTRYPOINT ["unifi_exporter"]
CMD [""]

