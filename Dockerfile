FROM node:18-buster-slim

LABEL version="1.0.5"
LABEL repository="https://github.com/ylsislove/hexo-action"
LABEL homepage="https://ylsislove.github.io"
LABEL maintainer="wangyu <wangyu0814@foxmail.com>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git ssh > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
