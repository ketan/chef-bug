user 'bob' do
  home '/bob'
  shell '/bin/bash'
  manage_home true
end

ruby_block "assert home dir exists" do
  block do
    raise "Home dir does not exist" unless ::File.exist?('/bob')
  end
end
