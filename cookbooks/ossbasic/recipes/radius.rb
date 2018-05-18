# PAM - Set up radius access

cookbook_file '/etc/pam.d/su' do
	source 'su'
end

cookbook_file '/etc/pam.d/sudo' do
        source 'sudo'
end

cookbook_file '/etc/pam.d/sshd' do
        source 'sshd'
end




