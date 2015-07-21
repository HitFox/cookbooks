node[:deploy].each do |application, deploy|
  node[:delayed_job][deploy[:rails_env]][:workers_count].times do |count|
    Chef::Log.debug("Restarting delayed_job.#{deploy[:rails_env]}.#{count}")
    execute "monit restart delayed_job.#{count}" 
  end
end