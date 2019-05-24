ARG base_image
FROM $base_image

ARG username=docker_user
ARG uid
ARG gid

USER root

RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Japan /etc/localtime

RUN apt-get update && apt-get install -y \
    apt-transport-https ca-certificates libcurl3-gnutls \
    sudo less
RUN apt-get install -y \
    gcc cmake

RUN export uid=${uid} gid=${gid} && \
    echo "${username}:x:${uid}:${gid}:${username},,,:/home/${username}:/bin/bash" >> /etc/passwd && \
    echo "${username}:x:${uid}:" >> /etc/group && \
    echo "${username} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${username} && \
    chmod 0440 /etc/sudoers.d/${username} && \
    mkdir -p /home/${username} && \
    chown ${uid}:${gid} -R /home/${username}

USER ${username}

VOLUME ["/src"]
WORKDIR "/src"
