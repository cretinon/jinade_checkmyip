ARG ARCH=frommakefile
ARG DISTRIB=frommakefile
ARG DOCKERSRC=frommakefile
ARG USERNAME=frommakefile
#
FROM ${USERNAME}/${DOCKERSRC}:${DISTRIB}_${ARCH}
#
RUN apk add --no-cache --purge curl ca-certificates && rm -rf /var/cache/apk/* 

ADD entrypoint.sh /usr/local/entrypoint.sh
RUN chmod +x /usr/local/entrypoint.sh

ENTRYPOINT /usr/local/entrypoint.sh
