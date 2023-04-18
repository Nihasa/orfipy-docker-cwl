FROM rockylinux/rockylinux:8

RUN dnf update -y && \
    dnf install -y epel-release && \
    dnf clean all && \
    dnf install -y \
        python3 \
        python3-pip \
        python3-setuptools \
        python3-devel

RUN pip3 install orfipy

ENTRYPOINT ["orfipy"]
