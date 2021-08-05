FROM ubuntu

ADD configure.sh /configure.sh

RUN apt-get update \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && data \
 && apt-get -y install python3-pip \
 && chmod +x /configure.sh \
 && wget --no-check-certificate https://github.com/lhllhx/PTtest/raw/main/requirements.txt \
 && python3 -m pip install --upgrade pip \
 && pip3 install -r requirements.txt
 
 

CMD /configure.sh
