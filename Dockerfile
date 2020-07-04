FROM wtanaka/ubuntu-1604-oracle-java-8
MAINTAINER https://wtanaka.com/dockerfiles
RUN cd / \
  && wget https://raw.githubusercontent.com/cliwrap/xenial/master/run-as-hostuid.sh \
  && chmod a+x run-as-hostuid.sh \
  && apt-get update \
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
ENTRYPOINT ["/run-as-hostuid.sh"]
