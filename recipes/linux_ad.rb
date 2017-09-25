# cookbook Name:: linux_AD
# Recipe:: default
# Copyright 2017, REANCLOUD
execute 'install' do
  command 'yum install wget -y'
end
execute 'update' do
  command 'yum update dns ip in /etc/resolve.conf'
end
execute 'import' do
  command 'rpm --import http://repo.pbis.beyondtrust.com/yum/RPM-GPG-KEY-pbis'
end
execute 'wget' do
  command 'wget -O /etc/yum.repos.d/pbiso.repo http://repo.pbis.beyondtrust.com/yum/pbiso.repo'
end
execute 'clean' do
  command 'yum clean all'
end
execute 'install' do
  command 'yum install pbis-open -y'
end
execute 'domain' do
  command '/opt/pbis/bin/domainjoin-cli join priyanka.in Administrator pass@1234'
end
execute 'directory' do
  command '/opt/pbis/bin/update-dns'
end
execute 'reload' do
  command 'service sshd reload'
end
