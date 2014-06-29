#
# Cookbook Name:: lang_python
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{python-all pylint}.each do |v| package v end
