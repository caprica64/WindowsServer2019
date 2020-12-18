#
#### Network config
#


# Config TCP/IP

# Find interface index with

Get-NetAdapter

#
# interface index is shown along other information
#
# Set IP and GW
#

New-NetIPAddress -InterfaceIndex 4 -IPAddress 10.1.1.11 -PrefixLenght 24 -DefaultGateway 10.1.1.1

# Set DNS servers

Set-DnsClientServerAddress - InterfaceIndex 6 - ServerAddress 10.1.1.1

# Set new hostname

Hostname

Rename-Computer -ComputerName currnetComputerName -NewName newComputerName

#
# restart the server
#

shutdown -r 


#
# Using more than one IP address on a network interface card 
#
New-NetIPAddress -InterfaceIndex 4 - IPAddress 10.1.1.12 -PrefixLenght 24 -DefaultGateway 10.1.1.1
#
# check config

cls

ipconfig

#
## NIC Teaming
#

New-NetlBfoTeam -Name "nameOfNewLoadBalancerTeam" -TeamMembers "Eth0","Eth1","Eth2" -LoadBalancingAlgorithm TransportPorts | IPAddress | MacAddresses -TeamingMode Static | LACP | SwitchIndenpendent

# Choose one LB protocol, one transport port and algorithm

#
#### Storage 
#

# get a list of not installed features and roles
Get-WindowsFeature | Where-Object -FilterScript{$_.Installed -Eq $False}

# Remote uninstalled features from side by side SxS directory
Get-WindowsFeature | Where-Object -FilterScript{$_.Installed -Eq $False} | Uninstall-WindowsFeature -Remove

