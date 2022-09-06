FROM quay.io/coreos/po-tooling:release-0.48
LABEL maintainer="tgeorgomanolis@gmail.com"

WORKDIR /app
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
