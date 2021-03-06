FROM ubuntu:20.10

ADD configure.sh /configure.sh
ADD upload.sh /upload.sh

RUN apt-get update \
 && date \
 && apt-get -y install python3-pip wget git \
 && chmod +x /configure.sh \
 && wget --no-check-certificate https://github.com/lhllhx/PTtest/raw/main/requirements.txt \
 && python3 -m pip install --upgrade pip \
 && pip3 install -r requirements.txt
 
 

CMD /configure.sh
