FROM      ubuntu
WORKDIR   /root

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Vancouver

RUN apt-get update && apt-get install -y --no-install-recommends wget curl nano ssh tzdata \
&& ln -sf /usr/share/zoneinfo/America/Vancouver /etc/localtime \
&& apt-get clean && rm -rf /var/log/apt

COPY  home/*  .
COPY  entrypoint.sh /

# && rm -rf .github && rm -f Dockerfile && rm -f .dockerignore && rm -f README.md

ENTRYPOINT  ["/entrypoint.sh"]
