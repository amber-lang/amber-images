FROM alpine:3.22 AS build

RUN apk update
RUN apk add --no-cache bc bash tar xz

COPY . .

RUN ./install.sh Linux

RUN which bash
RUN which bc

FROM alpine:3.22 AS final

WORKDIR /app

RUN apk add --no-cache bash bc \
    && rm -rf /var/cache/apk/*

COPY --from=build /usr/bin/amber /usr/bin/amber

ENTRYPOINT ["amber"]

CMD ["--help"]
