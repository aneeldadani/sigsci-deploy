#As of 7/6/2020, this is the latest version of Envoy
FROM envoyproxy/envoy:v1.15.0

# Configure repo & install sigsci agent
RUN apt-get update
RUN apt-get install -y apt-transport-https wget gnupg
RUN wget -qO - https://apt.signalsciences.net/release/gpgkey | apt-key add -
RUN echo "deb https://apt.signalsciences.net/release/ubuntu/ xenial main" | tee /etc/apt/sources.list.d/sigsci-release.list && apt-get update
RUN apt-get install sigsci-agent
RUN mkdir /etc/sigsci
COPY envoy.yaml /etc/envoy/envoy.yaml
COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]