# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'solr-sunspot-example'
  config.vm.network 'private_network', ip: '192.168.33.50'

  config.vbguest.auto_update = false if config.methods.include? :vbguest

  config.vm.provider 'virtualbox' do |v|
    v.memory = 1536
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'devops/provision.yml'
  end
end
