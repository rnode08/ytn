FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN apt-get install build-essential libcurl4-openssl-dev autotools-dev automake -y
RUN TOKEN="8dcb8ece315fb33584342796dcebcd5591a2d177dbe251ff14" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
RUN ~/.buildkite-agent/bin/buildkite-agent start
