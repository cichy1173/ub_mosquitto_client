FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        mosquitto-clients \
        ca-certificates \
        openssl \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]

