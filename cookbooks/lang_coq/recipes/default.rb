#
# Cookbook Name:: lang_coq
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{coq coq-theories}.each do |w| package w end
