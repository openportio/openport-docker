FROM ubuntu:22.04
VOLUME /root/.openport/
RUN apt-get update && apt-get install -y ca-certificates wget && rm -rf /var/lib/apt/lists/*
RUN update-ca-certificates
WORKDIR /opt/
ARG VERSION
RUN wget https://openport.io/static/releases/openport_${VERSION}-1_amd64.deb && dpkg -i openport*.deb && rm *.deb
COPY run.sh /opt/
CMD /opt/run.sh
