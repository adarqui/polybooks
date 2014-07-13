#
# Cookbook Name:: lang_prolog
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{gprolog gprolog-doc swi-prolog}.each do |v| package v end
