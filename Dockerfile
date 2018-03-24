FROM debian:jessie

MAINTAINER miettal <taisyo@hongo.wide.ad.jp>

RUN echo "deb http://download.atmark-techno.com/debian/ jessie main contrib non-free" >> /etc/apt/sources.list
RUN gpg --keyserver pgp.mit.edu --recv-keys 3874DA771B351757
RUN gpg --armor --export 3874DA771B351757 | apt-key add -
RUN apt-get update

RUN apt-get install -y atmarktechno-development-environment
