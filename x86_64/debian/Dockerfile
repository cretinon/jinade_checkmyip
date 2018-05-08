ARG ARCH=frommakefile
ARG DISTRIB=frommakefile
ARG DOCKERSRC=frommakefile
ARG USERNAME=frommakefile
#
FROM ${USERNAME}/${DOCKERSRC}:${DISTRIB}_${ARCH}
#
RUN apt-get update && apt-get -y -q install --no-install-recommends curl ca-certificates && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/*

ADD entrypoint.sh /usr/local/entrypoint.sh
RUN chmod +x /usr/local/entrypoint.sh

ENTRYPOINT /usr/local/entrypoint.sh 
