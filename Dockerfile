# add new VLAN to HyperFlex System
# docker build -t <image_name> . <— ‘.’ specifies the current working directory
# docker run -it -—name <container name> <image_name>
# docker start -ia <container name>

FROM alpine:latest

MAINTAINER Jason Makar <jmakar@mac.com>

RUN apk add --update \
    python \
    py-pip \
&& pip install --upgrade pip \
&& pip install ucsmsdk \
&& pip install pyvmomi \
&& rm -rf /var/cache/apk/*

COPY add_hx_vlan.zip /
RUN unzip add_hx_vlan.zip
RUN rm add_hx_vlan.zip

ENTRYPOINT python /add_hx_vlan/add_hx_vlan.py
