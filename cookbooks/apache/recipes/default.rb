#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

#require 'pry'
#binding.pry


package node['apache']['package_name'] 

file node['apache']['default_index_html'] do
  content '<h1>Welcome Home!</h1>'
end

service node['apache']['service_name'] do
  action [:enable, :start]
end
