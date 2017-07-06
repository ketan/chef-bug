FROM centos:6

COPY default.rb /default.rb
ARG BUILD_NUMBER

RUN rpm -ivh https://packages.chef.io/files/stable/chefdk/${BUILD_NUMBER}/el/6/chefdk-${BUILD_NUMBER}-1.el6.x86_64.rpm && \
    chef-solo --version && \
    chef-apply /default.rb
