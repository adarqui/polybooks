#
# Cookbook Name:: lang_fortran
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{gfortran cfortran f2c fcc}.each do |v| package v end
