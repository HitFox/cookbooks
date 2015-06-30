
node[:deploy].each do |application, deploy|

	if application == "revive_adserver"
		directory "#{deploy[:deploy_to]}/current/var" do
	  	owner 'root'
	  	group 'root'
			owner deploy[:user]
			group deploy[:group]
	  	mode '0777'
		end
	end

end

# apt-get install unzip
# wget http://download.revive-adserver.com/revive-adserver-3.2.1.zip
# unzip -o revive-adserver-3.2.1.zip
# ls -lath .
