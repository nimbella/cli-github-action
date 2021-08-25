FROM node:lts
RUN curl -L https://apigcp.nimbella.io/downloads/nim/nim-v1.17.0/nim-v1.17.0-linux-x64.tar.gz | tar xz -C /usr/local/
RUN ln -s /usr/local/nim/bin/nim /usr/local/bin/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
