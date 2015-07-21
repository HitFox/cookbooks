include_recipe "deploy"



node[:deploy].each do |application, deploy|  
  
  Chef::Log.info('############################')
  Chef::Log.info(node[:delayed_job][deploy[:rails_env].to_sym][:workers_count].inspect)
  Chef::Log.info('############################')
  
  template "/etc/monit/conf.d/delayed_job.monitrc" do
    source "delayed_job.monit.erb"
    group deploy[:group]
    owner deploy[:user]
    mode '0644'
  end

  execute "restarting monit" do
    command "/etc/init.d/monit restart"
  end
end