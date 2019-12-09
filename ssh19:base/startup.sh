#! /bin/bash
# @edt ASIX M06 2019-2020
# startup.sh
# -------------------------------------

/opt/docker/install.sh && echo "Install Ok"

# Configuració ldap
/sbin/nscd && echo "nscd Ok"
/sbin/nslcd  && echo "nslcd OK"

# generar claves host
/sbin/ssh-keygen -A
# ssh en detach
/sbin/sshd -D