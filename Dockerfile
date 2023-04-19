FROM rockylinux/rockylinux-minimal:8.4

RUN dnf update -y && \
    dnf install -y epel-release && \
    dnf clean all && \
    dnf install -y \
        python3 \
        python3-pip \
        python3-setuptools \
        python3-devel \
        sqlite-devel

RUN dnf install -y gcc-c++ 
RUN dnf install -y gcc
RUN dnf install -y make 
RUN dnf install -y zlib-devel 

RUN dnf clean all

RUN pip3 install cython
RUN pip3 install orfipy

RUN orfipy --version

ENTRYPOINT ["orfipy"]
