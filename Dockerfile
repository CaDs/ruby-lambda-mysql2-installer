FROM lambci/lambda:build-ruby2.5
RUN yum install -y mysql-devel
RUN gem update bundler
CMD "/bin/bash"

