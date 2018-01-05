FROM ubuntu:16.04
MAINTAINER fendo181 fedno181git@gmail.com

# あくまで落としてくるだけ
RUN echo 'Ubuntuのイメージを落としてきます。'

# update
RUN apt-get update && apt-get -y upgrade
# git
RUN apt-get install git -qq
#vimをinstallする
# RUN apt-get install -qq vim

# Ruby install
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc
RUN exec $SHELL

RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
RUN exec $SHELL

RUN rbenv -v
RUN rbenv install 2.5.0
RUN rbenv global 2.5.0

RUN mkdir home/workspace
WORKDIR home/workspace

# CMD: docker runするときに実行される
CMD echo "now running..."
