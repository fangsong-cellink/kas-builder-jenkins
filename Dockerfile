FROM ubuntu:18.04
USER root
RUN groupadd -g 1000 jenkins && \
    useradd -m -s /bin/bash -u 1000 -g 1000 jenkins && \ 
    apt-get update && apt-get install -y python python3 python3-pip python2.7 git wget locales chrpath cpio diffstat gawk texinfo vim && \
    locale-gen en_US.UTF-8 && \
    git clone https://github.com/siemens/kas.git && \
    cd kas && \
    git checkout 3.3 && \
    pip3 install . && \
    git config --system url."https://github.com/".insteadOf git://github.com/
USER jenkins
ENV LANG=en_US.UTF-8
WORKDIR /home/jenkins
