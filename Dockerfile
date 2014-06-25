FROM centos
MAINTAINER Yuu Yamanaka <yuu@relx.jp>

RUN yum update -y && yum install -y glibc-devel gcc gcc-c++ tar perl && yum clean all
RUN curl -L https://www.opscode.com/chef/install.sh | bash
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN /opt/chef/embedded/bin/gem install berkshelf
