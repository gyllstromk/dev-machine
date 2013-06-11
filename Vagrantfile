Vagrant::configure('2') do |config|
    config.vm.box = "precise32"
    config.vm.hostname = "tilquin"

    config.vm.provision :chef_solo do |chef|
        chef.json = {
            "dot" => {
                "user" => "vagrant",
                "group" => "vagrant"
            },
            "nvm" => {
                "user" => "vagrant",
                "group" => "vagrant",
                "versions" => [ 'v0.8.24' ]
            }
        }

        chef.add_recipe "git"
        chef.add_recipe "zsh"
        chef.add_recipe "curl"
        chef.add_recipe "make"
        chef.add_recipe "g++"
        chef.add_recipe "nvm"
        chef.add_recipe "dot"
        chef.add_recipe "gitflow"
    end

end
