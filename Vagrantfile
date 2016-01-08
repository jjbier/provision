# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?("vagrant-hostsupdater")
    system "vagrant plugin install vagrant-hostsupdater"
end

Vagrant.configure('2') do |config|
    config.vm.box           = 'opscode-centos-6.5'
    config.vm.box_url       = 'http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box'
    
    # Add autorization key with ssh user keys
    config.vm.provision "file",   source: "~/.ssh/id_rsa.pub", destination: "/tmp/authorized_keys"
    config.vm.provision "shell",  inline: 'echo `cat /tmp/authorized_keys` >> /home/vagrant/.ssh/authorized_keys'

    config.vm.define "api3" do |api3|
        api3.vm.network :private_network, ip: "192.168.200.101"
        api3.vm.hostname = 'api3.confirmsign.lo' 
        config.vm.provider :virtualbox do |virtualbox|
            virtualbox.gui    = false
            virtualbox.name   =  'api3.confirmsign.lo'
            virtualbox.cpus   =  2
            virtualbox.memory =  1024
        end        
    end  

    config.vm.define "cfsweb" do |app|
        app.vm.network :private_network, ip: "192.168.200.102"
        app.vm.hostname = 'cfsweb.confirmsign.lo' 
        config.vm.provider :virtualbox do |virtualbox|
            virtualbox.gui    = false
            virtualbox.name   =  'cfsweb.confirmsign.lo'
            virtualbox.cpus   =  2
            virtualbox.memory =  1024
        end        
    end   

    config.vm.define "db" do |db|
        db.vm.network :private_network, ip: "192.168.200.103"
        db.vm.hostname = 'db.confirmsign.lo' 
        config.vm.provider :virtualbox do |virtualbox|
            virtualbox.gui    =  false
            virtualbox.name   =  'db.confirmsign.lo'
            virtualbox.cpus   =  2
            virtualbox.memory =  1024
        end        
    end        
end    