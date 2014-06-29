#
# Cookbook Name:: php5
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

apt_repository 'hhvm' do
 uri 'http://dl.hhvm.com/ubuntu'
 components ['main', 'stable' ]
 distribution 'trusty'
 key 'http://dl.hhvm.com/conf/hhvm.gpg.key'
end

%w{php5 hhvm}.each do |v| package v end
