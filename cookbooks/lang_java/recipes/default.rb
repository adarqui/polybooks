#
# Cookbook Name:: lang_java
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_repository 'java-apt' do
 uri 'http://ppa.launchpad.net/webupd8team/java/ubuntu/'
 arch 'amd64'
 distribution 'trusty'
 components ['main']
 keyserver 'keyserver.ubuntu.com'
 key 'EEA14886'
end

execute '/bin/echo /usr/bin/debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections'

package 'oracle-java8-installer'
