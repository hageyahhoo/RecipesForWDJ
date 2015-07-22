#
# Cookbook Name:: config
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "/home/vagrant/.bash_profile" do
  owner node['user']
  group node["group"]
  mode  0644
end

