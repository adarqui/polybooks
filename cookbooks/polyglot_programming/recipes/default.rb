#
# Cookbook Name:: polyglot_programming
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'editors'

%w{c haskell ocaml ada php erlang go fortran prolog node lua cpp csharp fsharp java scala clojure python perl smalltalk groovy rust csh zsh}.each do |v|
 include_recipe 'lang_' + v
end
