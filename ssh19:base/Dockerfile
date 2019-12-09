# Version: 0.0.1
# @edt M06 2019-2020
# samba
# -------------------------------------
FROM fedora:27
LABEL author="@edt ASIX M06-ASO"
LABEL description="ssh server 2019-2020"
RUN dnf -y install procps passwd nss-pam-ldapd iproute nmap \
                    util-linux-user authconfig vim tree \
                    openssh-clients openssh-server

RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]

