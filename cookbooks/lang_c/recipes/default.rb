#
# Cookbook Name:: lang_c
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{gcc valgrind gdb}.each do |v| package v end
