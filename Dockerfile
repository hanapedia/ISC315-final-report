FROM nvidia/cuda:11.7.0-runtime-ubuntu22.04

RUN apt-get update && apt-get -y upgrade
RUN apt install -y curl python3 python3-distutils
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID $GROUPNAME && \
  useradd -m -s /bin/bash -u $UID -g $GID $USERNAME
USER $USERNAME
WORKDIR /home/$USERNAME/
ENV PATH=$PATH:/home/$USERNAME/.local/bin

COPY ./requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt
