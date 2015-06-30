
include_recipe 'deploy'

puts "XXXXX"
puts deploy[:deploy_to]

bash 'install_adserver' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  EOH
end

# apt-get install unzip
# wget http://download.revive-adserver.com/revive-adserver-3.2.1.zip
# unzip -o revive-adserver-3.2.1.zip
# ls -lath .
