ROM debian:wheezy

MAINTAINER miettal <taisyo@hongo.wide.ad.jp>

RUN echo "deb http://download.atmark-techno.com/debian/ wheezy main contrib non-free" >> /etc/apt/sources.list
RUN gpg --keyserver pgp.mit.edu --recv-keys 3874DA771B351757
RUN gpg --armor --export 3874DA771B351757 | apt-key add -
RUN apt-get update
