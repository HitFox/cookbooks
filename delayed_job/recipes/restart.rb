node[:deploy].each do |application, deploy|
  node[:delayed_job][application][:workers_count].times do |count|
    Chef::Log.debug("Restarting delayed_job.#{application}.#{count}")
    execute "monit restart delayed_job.#{count}" 
  end
end