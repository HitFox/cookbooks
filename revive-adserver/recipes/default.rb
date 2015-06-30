
node[:deploy].each do |application, deploy|

	if application == "revive_adserver"
		bash 'change permissions' do
		  user deploy[:user]
			group deploy[:group]
		  cwd "#{deploy[:deploy_to]}/current"
		  code <<-EOH
			chmod -R a+w var
			chmod -R a+w var/cache
		  EOH
		end
	end
	
end
