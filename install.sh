#! /bin/bash
# Sergi
# edt-asixM06
# Install ldap server

rm -rf /etc/openldap/slapd.d/*
rm -rf /var/lib/ldap/*
cp DB_CONFIG /var/lib/ldap/.
slaptest -f /opt/docker/slap-edt.org.conf /etc/openldap/slapd.d/.
slapadd -F /etc/openldap/slapd.d/ -l /opt/docker/organitzacio_edt.org.ldif
slapadd -F /etc/openldap/slapd.d/ -l /opt/docker/usuaris_edt.org.ldif
chown -R ldap.ldap /etc/openldap/slapd.d/
chown -R ldap.ldap /var/lib/ldap/
cp /opt/docker/ldap.conf /etc/openldap/.


