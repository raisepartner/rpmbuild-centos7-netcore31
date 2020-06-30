FROM rpmbuild/centos7

USER root

RUN rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
RUN yum install dotnet-sdk-3.1 -y
RUN yum install systemd -y
RUN yum clean all

USER builder