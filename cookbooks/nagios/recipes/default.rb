#
# Cookbook:: nagios
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'nagios3' do
	package_name 'nagios3'
	action :install
end

remote_directory '/etc/nagios3' do
	source 'nagios3'
	files_owner 'root'                                                                 
	files_group 'root'
	mode '0755'
end


execute 'remove contacts_nagios2.cfg' do
	command 'rm /etc/nagios3/conf.d/contacts_nagios2.cfg'
end


service 'nagios3' do
	service_name 'nagios3'
	action [:start, :enable]
end
