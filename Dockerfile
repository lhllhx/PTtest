FROM ubuntu

ADD configure.sh /configure.sh

RUN apt-get update \
 && apt-get -y install python3-pip \
 && chmod +x /configure.sh \
 && pip3 install flexget

CMD /configure.sh
