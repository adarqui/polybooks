#
# Cookbook Name:: lang_lua
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{lua5.2 luarocks}.each do |v| package v end
