# cookbook Name:: linux_AD
# Recipe:: default
# Copyright 2017, REANCLOUD
# Copyright:: 2017, The Authors, All Rights Reserved.
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
execute 'dnsupdate' do
  command "if node['resolver']['nameservers'].empty? || node['resolver']['nameservers'][0].empty?
  Chef::Log.warn("#{linux_AD}::#{ubuntu_ad.rb} requires that attribute ['resolver']['nameservers'] is set.")
  Chef::Log.info("#{linux_AD}::#{ubuntu_ad.rb} exiting to prevent a potential breaking change in /etc/resolv.conf.")
  return
else
  t = template '/etc/resolv.conf' do
    source 'resolv.conf.erb'
    owner 'root'
    group node['root_group']
    mode '0644'
    # This syntax makes the resolver sub-keys available directly
    variables node['resolver']
  end
end"
end
execute 'domain' do
  command 'domainjoin-cli join priyanka.in Administrator pass@1234'
end
execute 'ssh' do
  command 'service ssh reload'
end
