FROM ghcr.io/siemens/kas/kas:2.5
USER root
RUN groupadd -g 1000 jenkins && \
    useradd -m -s /bin/bash -u 1000 -g 1000 jenkins
USER jenkins
WORKDIR /home/jenkins
