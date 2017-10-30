# linux_AD

Active Directory (AD) is a directory service that Microsoft developed for Windows domain networks. It is included in most Windows
Server operating systems as a set of processes and services.[1][2] Initially, Active Directory was only in charge of centralized 
domain management. Starting with Windows Server 2008, however, Active Directory became an umbrella title for a broad range of
directory-based identity-related services.
It consists of two environments:

REAN-Standard-IAM.blueprint
REAN-Standard-n-layer-VPC.blueprint

Steps to deploy SSM

Import environment from blueprint in DeployNow from location : https://github.com/priyanka561/linux_AD
Update input variable on DeployNow UI deploynow_ip, my_public_ip eg. Input variables
{
"VPC1_CIDR": "10.0.0.0/16",
"VPC2_CIDR": "172.31.0.0/16",
"deploynow_ip": "35.160.236.240",
"my_public_ip": "202.65.158.154"
}
