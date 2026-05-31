FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl tmate python3 \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8080

CMD while true; do tmate -F; sleep 5; done & python3 -m http.server 8080
