#
# Cookbook Name:: firefox
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "firefox" do
  action :upgrade
end

bash "locale" do
  code <<-EOC
    yum -y groupinstall "Japanese Support"  
    localedef -f UTF-8 -i ja_JP ja_JP.utf8
  EOC
end

template "i18n" do
  path "/etc/sysconfig/i18n"
  source "i18n.erb"
  owner "root"
  group "root"
  mode 0644
end

