# cookbook:: linux_AD
# Recipe:: default
# Copyright:: 2017, The Authors, All Rights Reserved.
if node['resolver']['nameservers'].empty? ||
   node['resolver']['nameservers'][0].empty?
  Chef::Log.warn("The ['resolver']['nameservers'] attribute is not set.")
  Chef::Log.warn('Exiting the recipe...')
  return
end
case node['platform']
when 'amazon'
  include_recipe 'linux_AD::linux_ad'
when 'ubuntu'
  include_recipe 'linux_AD::ubuntu_ad'
end
