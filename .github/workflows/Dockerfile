FROM rockylinux/rockylinux:8

RUN dnf update -y && \
    dnf install -y epel-release && \
    dnf clean all && \
    dnf install -y \
        python3
