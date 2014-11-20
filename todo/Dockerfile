FROM python:2

RUN apt-get update -y \
  && apt-get install -y curl unzip \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir -p /tmp/t \
  && mkdir -p /usr/src/app \
  && curl -SL http://bitbucket.org/sjl/t/get/tip.zip -o t.zip \
  && unzip t.zip -d /tmp/t \
  && mv /tmp/t/*/* /usr/src/app \
  && rm t.zip

VOLUME [ "/data" ]

ENTRYPOINT [ "/usr/src/app/t.py", "-t", "/data" ]
