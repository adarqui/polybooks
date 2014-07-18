#
# Cookbook Name:: lang_node
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{nodejs npm}.each do |v| package v end

execute "ln -s /usr/bin/nodejs /usr/bin/node" do
 not_if { ::File.exists? '/usr/bin/node' }
end

execute "npm install -g typescript coffee-script typed-coffee-script"
