FROM centos:7
RUN yum update -y && yum install -y wget perl openssl-devel dmidecode

RUN wget -q -O - http://linux.dell.com/repo/hardware/latest/bootstrap.cgi | bash
RUN yum install -y srvadmin-idracadm7

RUN cp /opt/dell/srvadmin/bin/idracadm7 /usr/local/bin/racadm
