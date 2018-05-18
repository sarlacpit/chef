#
# Cookbook:: nagios
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'nagios3' do
	package_name 'nagios3'
	action :install
end

service 'nagios3' do
	service_name 'nagios3'
	action [:start, :enable]
end
