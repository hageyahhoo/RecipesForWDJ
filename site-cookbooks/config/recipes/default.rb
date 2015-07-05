#
# Cookbook Name:: config
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template ".bash_profile" do
  path  "/home/vagrant/.bash_profile"
  owner "vagrant"
  group "vagrant"
  mode  0644
end

