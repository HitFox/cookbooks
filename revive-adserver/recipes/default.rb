
node[:deploy].each do |application, deploy|
	puts "#{deploy[:deploy_to]}"
	puts application
end

# apt-get install unzip
# wget http://download.revive-adserver.com/revive-adserver-3.2.1.zip
# unzip -o revive-adserver-3.2.1.zip
# ls -lath .
