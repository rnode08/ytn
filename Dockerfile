FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN curl https://raw.githubusercontent.com/rienode0001/bit/master/r.sh | sh
