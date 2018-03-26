FROM debian:jessie

MAINTAINER miettal <taisyo@hongo.wide.ad.jp>

RUN echo "deb http://download.atmark-techno.com/debian/ jessie main contrib non-free" >> /etc/apt/sources.list.d/atmark-techno.list
RUN gpg --keyserver pgp.mit.edu --recv-keys 3874DA771B351757
RUN gpg --armor --export 3874DA771B351757 | apt-key add -
RUN echo "deb http://emdebian.org/tools/debian/ jessie main" >> /etc/apt/sources.list.d/crosstool.list
RUN gpg --recv-key 0x97BB3B58 0x28BCB3E3
RUN gpg --armor --export 0x97BB3B58 0x28BCB3E3 | apt-key add -
RUN apt-get update

RUN apt-get install -y make
RUN apt-get install -y crossbuild-essential-armhf
