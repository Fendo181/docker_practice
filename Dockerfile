FROM ubuntu:16.04
MAINTAINER Fendo181
# あくまで落としてくるだけ
RUN echo 'Ubuntuのイメージを落としてきます。'

# update
RUN apt-get update && apt-get -y upgrade

# mkdir
RUN mkdir workspace
