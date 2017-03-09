#
# Cookbook Name:: rails
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node[:deploy].each do |application, deploy|
  template "#{deploy[:deploy_to]}/shared/config/database.yml" do
    source "database.yml.erb"
    group deploy[:group]
    owner deploy[:user]
    mode 0755
  end
end
