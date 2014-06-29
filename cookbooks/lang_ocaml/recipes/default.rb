#
# Cookbook Name:: lang_ocaml
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{ocaml ocaml-source ocaml-tools omake opam}.each do |v| package v end
