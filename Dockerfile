FROM alpine

LABEL maintainer="Neptune LI <hkneptune@gmail.com>"

ARG USER=node
ARG GROUP=node
ARG UID=1000
ARG GID=1000

RUN apk update && apk upgrade && apk add bash nodejs yarn git

ENV HOME /home/${USER}
RUN addgroup -S ${GROUP} -g ${GID}
RUN adduser -S ${USER} -u ${UID} -G ${GROUP} -h ${HOME} -g "" -s /bin/bash -D
RUN touch /home/${USER}/.bashrc && echo "export PS1=\"\[\033[m\][\D{%Y-%m-%d} \t]\[\033[36m\] \[\033[35m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ \"" > /home/${USER}/.bashrc

WORKDIR /home/${USER}

USER ${USER}
