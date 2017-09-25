# cookbook:: AD
# Recipe:: default
# Copyright:: 2017, The Authors, All Rights Reserved.
case node['platform']
when 'amazon'
  include_recipe 'AD::linux_ad'
when 'ubuntu'
  include_recipe 'AD::ubuntu_ad'
end
