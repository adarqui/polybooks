#
# Cookbook Name:: lxc_polyp
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'lxc'

_ip = node['lxc_polyp']['ip']
_name = node['lxc_polyp']['name']
_gateway = node['lxc_polyp']['gateway']

lxc_container _name do
  template 'ubuntu'
  static_ip _ip
  static_gateway _gateway
  action :create
end

_rootfs = "/var/lib/lxc/#{_name}/rootfs"

template "#{_rootfs}/root/node.json" do
 source 'node.json'
end

template "#{_rootfs}/root/solo.rb" do
 source 'solo.rb'
end

lxc_service _name do
 action :start
end

execute "rsync -av #{ENV['PWD']}/polybooks/ #{_rootfs}/data/polybooks/"

# dirty
execute "sleep 10; ssh -o stricthostkeychecking=no -o userknownhostsfile=/dev/null -i /opt/hw-lxc-config/id_rsa root@#{_ip} 'apt-get update; apt-get -y install curl; [ -f /usr/bin/chef-solo ] || curl -L https://www.opscode.com/chef/install.sh | bash; chef-solo -c /root/solo.rb -j /root/node.json'"
