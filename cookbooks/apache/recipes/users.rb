
user 'adam' do
        username 'adam.mcpartlan'
        action :create
        comment ',,,'
        shell '/bin/bash'
end

user 'dave' do
        username 'dave.thurlow'
        action :create
	comment ',,,'
	shell '/bin/bash'
end

user 'alastair' do
        username 'alastair.taylor'
        action :create
        comment ',,,'
        shell '/bin/bash'
end

user 'paul' do
        username 'paul.marshall'
        action :create
        comment ',,,'
        shell '/bin/bash'
end

user 'gareth' do
        username 'gareth.watkins'
        action :create
        comment ',,,'
        shell '/bin/bash'
end



group 'sudo' do
	action :manage
	members ['adam.mcpartlan', 'alastair.taylor', 'paul.marshall', 'ubuntu']
end





#execute 'amcpartlan' do
#	command 'adduser adam.mcpartlan --disabled-password --gecos "" --force-badname'
#end
#
#execute 'ataylor' do
#	command 'adduser alastair.taylor --disabled-password --gecos "" --force-badname'
#e#nd
#execute 'dthurlow' do
#	command 'adduser dave.thurlow --disabled-password --gecos "" --force-badname'
#end
#
#execute 'gwatkins' do
#	command 'adduser gareth.watkins --disabled-password --gecos "" --force-badname'
#end
#
#execute 'pmarshall' do
#	command 'adduser paul.marshall --disabled-password --gecos "" --force-badname'
#end
#
#execute 'sudo-amcpartlan' do
#	command 'usermod -aG sudo adam.mcpartlan'
#end
#
#execute 'sudo-pmarshall' do
#	command 'usermod -aG sudo paul.marshall'
#end
#
#execute 'sudo-ataylor'do
#	command 'usermod -aG sudo alastair.taylor'
#
#end


#adduser adam.mcpartlan --disabled-password --gecos "" --force-badname
#adduser alastair.taylor --disabled-password --gecos "" --force-badname
#adduser dave.thurlow --disabled-password --gecos "" --force-badname
#adduser gareth.watkins --disabled-password --gecos "" --force-badname
#adduser paul.marshall --disabled-password --gecos "" --force-badname
#usermod -aG sudo adam.mcpartlan
#usermod -aG sudo paul.marshall
##usermod -aG sudo alastair.taylor
