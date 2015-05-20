conf_dir = node[:apache][:conf_enabled_dir] || "#{node[:apache][:dir]}/conf.d"

['headers'].each do |config|
  template "#{node[:apache][:conf_available_dir]}/#{config}.conf" do
    source "#{config}.conf.erb"
    owner 'root'
    group 'root'
    mode 0644
    backup false
  end

  execute "enable config #{config}" do
    command "/usr/sbin/a2enconf #{config}"
    user 'root'
    notifies :run, resources(:bash => 'logdir_existence_and_restart_apache2')
  end
end