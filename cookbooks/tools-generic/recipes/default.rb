#
# Cookbook Name:: tools-generic
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{locate tmux screen telnet traceroute git cvs mercurial}.each do |v| package v end
