FROM ubuntu

ADD configure.sh /configure.sh

RUN apt-get install python3-pip \
 && chmod +x /configure.sh \
 && pip3 install flexget

CMD /configure.sh
