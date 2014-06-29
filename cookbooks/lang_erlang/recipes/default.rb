#
# Cookbook Name:: lang_erlang
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{erlang erlang-tools erlang-appmon erlang-os-mon rebar}.each do |v| package v end
