FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl tmate python3 \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8080

CMD tmate -F & python3 -m http.server 8080
