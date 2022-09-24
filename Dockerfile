FROM redis

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install stunnel4
RUN echo "[redis-cli]" >> /etc/stunnel/stunnel.conf
RUN echo "client = yes" >> /etc/stunnel/stunnel.conf
RUN echo "accept = 127.0.0.1:6380" >> /etc/stunnel/stunnel.conf

COPY run.sh .
RUN chmod +x run.sh

ENTRYPOINT [ "./run.sh" ]