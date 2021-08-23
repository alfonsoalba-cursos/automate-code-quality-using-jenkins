# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.network "forwarded_port", 
                    guest: 8080, 
                    host: 8080, 
                    host_ip: "127.0.0.1"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
 
    # Customize the amount of memory on the VM:
    vb.memory = "4096"
    vb.cpus = "4"
  end

  path = File.join(File.dirname(__FILE__), "scripts", "provision.sh")
  config.vm.provision "shell", :path => path
end
