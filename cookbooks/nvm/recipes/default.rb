%w(git).each do |pkg|
  package pkg
end

me    = node['nvm']['user']
group = node['nvm']['group']
home  = "/home/#{me}"

git "#{home}/.nvm" do
    repository "git://github.com/creationix/nvm.git"
    user me
    group group
    action :checkout
end
