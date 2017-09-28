# cookbook Name:: linux_AD
# Recipe:: default
# Copyright 2017, REANCLOUD
# Copyright:: 2017, The Authors, All Rights Reserved.
if node['resolver']['nameservers'].empty? ||
   node['resolver']['nameservers'][0].empty?
  Chef::Log.warn("The ['resolver']['nameservers'] attribute is not set.")
  Chef::Log.warn('Exiting the recipe...')
  return
end
execute 'install' do
  command 'apt-get install wget -y'
end
execute 'install' do
  command 'wget -O - --no-check-certificate http://repo.pbis.beyondtrust.com/apt/RPM-GPG-KEY-pbis|sudo apt-key add -'
end
execute 'pbiso' do
  command 'sudo wget -O /etc/apt/sources.list.d/pbiso.list http://repo.pbis.beyondtrust.com/apt/pbiso.list'
end
execute 'update' do
  command 'sudo apt-get update'
end
execute 'install' do
  command 'sudo apt-get install pbis-open -y'
end
execute 'domain' do
  command 'domainjoin-cli join priyanka.in Administrator pass@1234'
end
execute 'ssh' do
  command 'service ssh reload'
end
