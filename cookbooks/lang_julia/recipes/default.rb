#
# Cookbook Name:: lang_julia
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_repository 'julia-apt' do
 uri 'http://ppa.launchpad.net/staticfloat/juliareleases/ubuntu'
 arch 'amd64'
 distribution 'trusty'
 components ['main']
 keyserver 'keyserver.ubuntu.com'
 key '3D3D3ACC'
end

apt_repository 'julia-deps-apt' do
 uri 'http://ppa.launchpad.net/staticfloat/julia-deps/ubuntu'
 arch 'amd64'
 distribution 'trusty'
 components ['main']
 keyserver 'keyserver.ubuntu.com'
 key '3D3D3ACC'
end

package 'julia'
