FROM debian:jessie-slim

LABEL maintainer=chris.alex.thomas@gmail.com

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
    && apt-get --no-install-recommends -y install \
    siege \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists

ENTRYPOINT ["siege"]
CMD ["--help"]

