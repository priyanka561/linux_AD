# cookbook:: linux_AD
# Recipe:: default
case node['platform']
when 'amazon'
  include_recipe 'linux_AD::linux_ad'
when 'ubuntu'
  include_recipe 'linux_AD::ubuntu_ad'
end
