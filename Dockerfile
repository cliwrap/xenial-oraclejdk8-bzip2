FROM wtanaka/ubuntu-1604-oracle-java-8
MAINTAINER https://wtanaka.com/dockerfiles
COPY run-as-hostuid.sh /
RUN apt-get update \
  && apt-get -y install bzip2 \
  && apt-get clean autoclean -y \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt \
    /var/lib/dpkg/arch \
    /var/lib/dpkg/available \
    /var/lib/dpkg/cmethopt \
    /var/lib/dpkg/diversions \
    /var/lib/dpkg/diversions-old \
    /var/lib/dpkg/lock \
    /var/lib/dpkg/parts \
    /var/lib/dpkg/statoverride \
    /var/lib/dpkg/status-old \
    /var/lib/dpkg/triggers \
    /var/lib/cache \
    /var/lib/log

RUN chmod +x /run-as-hostuid.sh
ENTRYPOINT ["/run-as-hostuid.sh"]

