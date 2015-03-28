FROM rjeschmi/easybuild-centos6

USER root

ADD ./fpm/export/packages /build/packages

RUN yum -y install /build/packages/*.rpm

RUN yum install -y GitPython

# Setting the environment to build all new tools into /export/easybuild for easier exporting

USER easybuild

WORKDIR /export/easybuild

VOLUME /export/easybuild
