#
# Cookbook Name:: editors
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{vim ed}.each do |v|
 package v do
  action :install
 end
end
