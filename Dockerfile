FROM amazonlinux:latest

RUN yum -y update && \
    yum -y install git && \
    yum clean all

RUN git clone https://github.com/InzynieriaOprogramowaniaAGH/MDO2024_S.git /app

WORKDIR /app
