#
# Cookbook Name:: config
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

# Test for data_bag
# * Need "id" in each json file.
ids = data_bag('users')

ids.each do |id|
  user = data_bag_item('users', id)
  log user['id']
  log user['color']
end


# Template for .bash_profile
template "/home/vagrant/.bash_profile" do
  owner node['user']
  group node["group"]
  mode  0644
end

