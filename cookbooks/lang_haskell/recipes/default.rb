#
# Cookbook Name:: haskell
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'haskell-platform'

apt_repository 'haskell-apt' do
 uri 'http://ppa.launchpad.net/hvr/ghc/ubuntu'
 arch 'amd64'
 distribution 'trusty'
 components ['main', 'stable']
 keyserver 'keyserver.ubuntu.com'
 key 'F6F88286'
end

%w{ghc-7.8.2 cabal-install-1.20 alex-3.1.3 happy-1.19.3}.each do |v| package v end

# haskell paths
#p = '/opt/ghc/7.8.2/bin:/opt/cabal/1.20/bin:/opt/alex/3.1.3/bin:/opt/happy/1.19.3'
#magic_shell_environment 'HASKELL' do
# value p
#end
#execute 'cabal update'
#execute 'cabal install hoogle'

#path = ENV['PATH']
#ENV['PATH'] = path + ':' + p

#bash "installing cabal-meta" do
#cwd '/tmp/'
#code <<-EOH
#git clone https://github.com/yesodweb/cabal-meta cabal-meta
#cd cabal-meta
#cabal install -g
#EOH
#end
