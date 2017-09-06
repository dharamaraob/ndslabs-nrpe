FROM ubuntu:xenial
MAINTAINER dharama rao bala <dharmaraobala@gmail.com>
RUN apt-get update -y && \
    apt-get install -q -y nagios-plugins nagios-nrpe-server \
    && rm -rf /var/lib/apt /tmp/* /var/tmp/* 

EXPOSE 5666

COPY nrpe.cfg /etc/nagios/nrpe.cfg
COPY nrpe-entrypoint.sh /nrpe-entrypoint.sh
ENTRYPOINT ["/nrpe-entrypoint.sh"]
CMD ["nrpe"]
