Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/xenial64"
    # Provision
    config.vm.provision :shell, :path => "bootstrap.sh"
    config.vm.define :mysite do |mysite|
        mysite.vm.network :public_network, ip: "192.168.1.123"
        mysite.vm.hostname = "serverchip"
        mysite.vm.synced_folder "shared/", "/home/ubuntu/shared", create: true
        mysite.vm.provider "virtualbox" do |vb|
            vb.customize ["modifyvm", :id, "--cpus", "1", "--memory", 512]
        end
    end
end
