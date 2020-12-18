
# Config TCP/IP
#
# Find interface index with
#
Get-NetAdapter
#
# interface index is shown along other information
#
# Set IP and GW
#
New-NetIPAddress -InterfaceIndex 4 -IPAddress 10.1.1.11 -PrefixLenght 24 -DefaultGateway 10.1.1.1
#
#S Set DNS servers
#
Set-DnsClientServerAddress - InterfaceIndex 6 - ServerAddress 10.1.1.1
#
# Set new hostname
#
Hostname
#
Rename-Computer -ComputerName currnetComputerName -NewName newComputerName
#
# restart the server
#
shutdown -r 
#
#
#
# Using more than one IP address on a network interface card 
#
New-NetIPAddress -InterfaceIndex 4 - IPAddress 10.1.1.12 -PrefixLenght 24 -DefaultGateway 10.1.1.1
#
# check config
#
cls
#
ipconfig
#
#



