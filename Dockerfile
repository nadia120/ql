FROM whyour/qinglong:latest
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
RUN apk add wget curl
RUN apk add --no-cache --virtual .build-deps gcc musl-dev python2-dev python3-dev libffi libffi-dev openssl openssl-dev
RUN pip3 install pip setuptools --upgrade
RUN pip3 install cryptography~=3.2.1
RUN pip3 install dailycheckin --upgrade
