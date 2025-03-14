FROM debian:latest

RUN apt update && apt install -y samba && rm -rf /var/lib/apt/lists/*

COPY --chmod=664 smb.conf /etc/samba/smb.conf
COPY --chmod=755  samba.sh /usr/bin/samba.sh

VOLUME /shared

EXPOSE 139 445

ENV USER=user
ENV PASS=password

ENTRYPOINT ["/usr/bin/samba.sh"]
