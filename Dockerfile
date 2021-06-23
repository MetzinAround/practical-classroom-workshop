FROM ruby:2.7.2

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get update
RUN apt-get -y install pandoc
RUN apt-get -y install texlive-latex-base
RUN apt-get -y install texlive-latex-extra
RUN apt-get -y install gettext-base

EXPOSE 4000