#
# Cookbook Name:: lang_guile
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{guile-2.0 guile-2.0-dev guile-2.0-libs}.each do |v| package v end
