FROM ubuntu:latest

RUN apt update && apt install -y dnsutils

USER 1001

CMD ["/bin/sh", "-c", "while true; do dig +short myip.opendns.com @resolver1.opendns.com; sleep 60; done"]
