# cookbook:: linux_AD
# Recipe:: default
# Copyright:: 2017, The Authors, All Rights Reserved.
case node['platform']
when 'amazon'
  include_recipe 'linux_AD::linux_ad'
when 'ubuntu'
  include_recipe 'linux_AD::ubuntu_ad'
end
