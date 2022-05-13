FROM ubuntu:22.04
VOLUME /root/.openport/
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*
RUN update-ca-certificates
ADD https://openport.io/static/releases/openport_2.0.4-1_amd64.deb /tmp/
RUN dpkg -i /tmp/openport*.deb
COPY run.sh /opt/
ENTRYPOINT /opt/run.sh
