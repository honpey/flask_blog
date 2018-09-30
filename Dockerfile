FROM ubuntu:16.04
MAINTAINER      Koren He "korenhe@outlook.com"
COPY env/sources.list /etc/apt/
RUN apt-get update -u
RUN apt-get install -y python3-pip python3-dev build-essential

RUN pip3 install --upgrade pip -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
COPY env/requirements.txt /env/requirements.txt
RUN pip3 install -r /env/requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

WORKDIR /workspace

#CMD ["/bin/bash", "-c", "python3 manage.py runserver"]
CMD ["/bin/bash", "-c", "python3"]
