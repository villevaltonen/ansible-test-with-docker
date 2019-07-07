FROM centos:centos7

# installing openssh-server
RUN yum -y update; yum clean all
RUN yum install -y openssh-server sudo
#RUN yum install -y openssh-server; yum clean all
RUN sed -i 's/#PermitRootLogin yes/PermitRootLogin without-password/' /etc/ssh/sshd_config

# adding user creation script to image
ADD ./start.sh /start.sh

# creating necessary folder for ssh service
RUN mkdir /var/run/sshd

# creating key
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''

# setting permissions for shell script
RUN chmod 755 /start.sh

# exposing ssh port 22
RUN ./start.sh

# setting entrypoint for image
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
