
node[:deploy].each do |application, deploy|

	if application == "revive_adserver"
		bash 'change permissions' do
		  user deploy[:user]
			group deploy[:group]
		  cwd "#{deploy[:deploy_to]}/current"
		  code <<-EOH
			mkdir -p var/templates_compiled
			mkdir -p www/admin/plugins

			chmod -R a+w var
			chmod -R a+w var/plugins
			chmod -R a+w var/cache
			chmod -R a+w var/templates_compiled
			chmod -R a+w plugins
			chmod -R a+w www/admin/plugins
			chmod -R a+w www/images
		  EOH
		end
	end

end
