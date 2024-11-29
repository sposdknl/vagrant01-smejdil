#!/usr/bin/env bash

# Aktualizace OS
#sudo dnf update -y

# Stažení balíčku pro instalaci zabbix repo v OracleLinux
sudo rpm -Uvh https://repo.zabbix.com/zabbix/6.0/rhel/9/x86_64/zabbix-release-latest.el9.noarch.rpm
sudo dnf clean all 

# Instalace zabbix agent2
sudo dnf install -y zabbix-agent2 zabbix-agent2-plugin-* 

# Povoleni sluzby zabbix-agent2
sudo systemctl enable zabbix-agent2

# Restart sluzby zabbix-agent2
sudo systemctl restart zabbix-agent2

# EOF