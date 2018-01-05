FROM ubuntu:16.04
MAINTAINER Fendo181 fedno181git@gmail.com

# あくまで落としてくるだけ
RUN echo 'Ubuntuのイメージを落としてきます。'

# update
RUN apt-get update && apt-get -y upgrade
# git
RUN apt-get install -qq git
#vimをinstallする
# RUN apt-get install -qq vim

# Ruby install
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv \
 && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc \
 && echo 'eval "$(rbenv init -)"' >> ~/.bashrc \
 && exec $SHELL

RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build \
  && echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc \
  && exec $SHELL

RUN rbenv install 2.5.0 \
 && rbenv global 2.5.0

RUN mkdir home/workspace
WORKDIR home/workspace

# CMD: docker runするときに実行される
CMD echo "now running..."
