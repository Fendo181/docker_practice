FROM ubuntu:16.04
# あくまで落としてくるだけ
RUN echo 'install ruby 2.5.0 to Ubuntu16.04'

# path
ENV PATH /root/.rbenv/plugins/ruby-build/bin:$PATH
ENV PATH /root/.rbenv/bin:$PATH

# update
RUN apt-get update && apt-get -y upgrade
RUN apt-get install git -y

# rbenv ruby-build install
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc
RUN exec $SHELL

RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
RUN exec $SHELL

# ruby install 2.5.0
# RUN rbenv install 2.5.0
# rails
# ENV PATH /root/.rbenv/versions/2.5.0/bin
# RUN rbenv global 2.5.0
