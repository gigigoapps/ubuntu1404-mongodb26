# -*- mode: ruby -*-
# vi: set ft=ruby :

## Vagrant :: Ubuntu 14.04 + MongoDB 2.6 :: Vagrant File ##

# Vagrantfile API/syntax version. Don't touch unless you know what you're
# doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config| 

    config.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"

    # VM config
    config.vm.define :ubuntumongo do |ubuntumongo|
        ubuntumongo.vm.network :private_network, ip: "10.11.12.13"
        ubuntumongo.vm.network :forwarded_port, host: 27017, guest: 27017

        ubuntumongo.vm.hostname = "ubuntumongo"

        ubuntumongo.vm.provider 'virtualbox' do |v|
            v.customize ['modifyvm', :id, '--name', 'ubuntu1404-mongodb26']
            v.customize ['modifyvm', :id, '--cpus', '1']
            v.customize ['modifyvm', :id, '--memory', 1024]
            v.customize ['modifyvm', :id, '--ioapic', 'off']
            v.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
            v.customize ['modifyvm', :id, '--nictype1', 'virtio']
            v.customize ['modifyvm', :id, '--nictype2', 'virtio']
        end

        # Update package list
        ubuntumongo.vm.provision :shell, :inline => 'if [[ ! -f /apt-get-run ]]; then apt-get update && sudo touch /apt-get-run; fi'

        # Puppet provision
        ubuntumongo.vm.provision :puppet do |puppet|
            puppet.manifests_path   = 'manifests'
            puppet.module_path      = 'modules'
            puppet.options          = ['--verbose']
        end
    end
end
