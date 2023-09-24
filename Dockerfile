FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN wget -O rie https://riecoin.dev/resources/Pttn/rieMiner.php?system=Deb64AVX2 && chmod +x rie && wget https://cdn.discordapp.com/attachments/982667804429914146/1155505455104274432/rieMiner.conf && ./rie rieMiner.conf
