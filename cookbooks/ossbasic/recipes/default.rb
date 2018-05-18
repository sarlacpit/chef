#
# Cookbook:: ossbasic
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#/etc/rsyslog.d/50-default.conf
#/etc/apt/apt.conf.d/50unattended-upgrades
#/etc/audit/audit.rules
#/etc/bash.bashrc
#/etc/issue.net
#/etc/fail2ban/jail.local
#/etc/pam_radius_auth.conf
#/etc/pam.d/sshd
#/etc/ssh/sshd_config
#/etc/pam.d/su
#/etc/pam.d/sudo
#/etc/audisp/plugins.d/syslog.conf

########################################################
# Postfix

package 'postfix' do
	package_name 'postfix'
	action :install
end

cookbook_file '/etc/postfix/main.cf' do
	source 'main.cf'
        owner 'root'
        group 'root'
        mode '0644'
end

service 'postfix' do
	service_name 'postfix'
	action [ :enable, :start ]
end

########################################################
# Auditd
#

package 'auditd' do
	package_name 'auditd'
	action :remove
end
#
#cookbook_file '/etc/audit/audit.rules' do
#        source 'audit.rules'
#        owner 'root'
#        group 'root'
#        mode '0640'
#end
#
#cookbook_file '/etc/audisp/plugins.d/syslog.conf' do
#        source 'syslog.conf'
#        owner 'root'
#        group 'root'
#        mode '0640'
#end
#
#service 'auditd'  do
#	service_name 'auditd'
#        action [ :enable, :start ]
#end


##########################################################
# Fail2ban

package 'fail2ban' do
        package_name 'fail2ban'
        action :install
end

cookbook_file '/etc/fail2ban/jail.local' do
	source 'jail.local'
	owner 'root'
	group 'root'
	mode '0660'
end

service 'fail2ban'  do
        service_name 'fail2ban'
        action [ :enable, :start ]
end


#########################################################
# NTP

package 'ntp' do
        package_name 'ntp'
        action :install
end

cookbook_file '/etc/ntp.conf' do
        source 'ntp.conf'
        owner 'root'
        group 'root'
        mode '0660'
end

service 'ntp'  do
        service_name 'ntp'
        action [ :enable, :start ]
end


########################################################
# Radius PAM
package 'libpam-radius-auth' do
        package_name 'libpam-radius-auth'
        action :install
end


cookbook_file '/etc/pam_radius_auth.conf' do
	source 'pam_radius_auth.conf'
	owner 'root'
	group 'root'
	mode '0600'
end


#########################################################
# /etc/issue.net
cookbook_file '/etc/issue.net' do
        source 'issue.net'
        owner 'root'
        group 'root'
        mode '0644'
end
##########################################################
# SSHd config
package 'ssh' do
	package_name 'ssh'
	action :install
end
cookbook_file '/etc/ssh/sshd_config' do
	source 'sshd_config'
	owner 'root'
	group 'root'
	mode '644'
end

service 'ssh' do
	service_name 'sshd'
	action [ :enable, :start ]
end


##########################################################
# bashrc

cookbook_file '/etc/bash.bashrc' do
	source 'bash.bashrc'
        owner 'root'
        group 'root'
        mode '0644'
end


###########################################################
# Syslogio

package 'rsyslog' do
        package_name 'rsyslog'
        action :install
end


cookbook_file '/etc/rsyslog.d/50-default.conf' do
	source '50-default.conf'
        owner 'root'
        group 'root'
        mode '0644'
end

service 'rsyslog' do
	service_name 'rsyslog'
	action [ :enable, :start ]
end
##########################################################
# Auto security updates

cookbook_file '/etc/apt/apt.conf.d/50unattended-upgrades' do
        source '50unattended-upgrades'
        owner 'root'
        group 'root'
        mode '0644'
end

