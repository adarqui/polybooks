#
# Cookbook Name:: lang_rust
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_repository 'rust-apt' do
 uri 'http://ppa.launchpad.net/hansjorg/rust/ubuntu'
 arch 'amd64'
 distribution 'trusty'
 components ['main']
 keyserver 'keyserver.ubuntu.com'
 key 'BD6B6386'
end

package 'rust-nightly'
