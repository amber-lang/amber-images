FROM debian:bookworm-slim AS build

RUN apt update && apt install -y bc xz-utils

COPY . .

RUN ./install.sh Linux

FROM debian:bookworm-slim AS final

WORKDIR /app

RUN apt update \
    && apt install -y bc wget \
    && rm -rf /var/lib/apt/lists/*

COPY --from=build /usr/bin/bc /usr/bin/amber  /usr/bin/

ENTRYPOINT ["amber"]
