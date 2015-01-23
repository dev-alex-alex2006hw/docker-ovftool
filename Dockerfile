FROM ubuntu
MAINTAINER EMCCODE <emccode@emc.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y ssh && apt-get clean

ADD ./VMware-ovftool-4.0.0-2301625-lin.x86_64.bundle /
RUN chmod +x /VMw*
RUN /VMware-ovftool-4.0.0-2301625-lin.x86_64.bundle  --eulas-agreed --required
ENTRYPOINT ["ovftool"]
CMD ["--help"]
