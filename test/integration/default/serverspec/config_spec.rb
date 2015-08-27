require 'serverspec'

set :backend, :exec

describe file("/home/vagrant/.bash_profile") do
  it { should exist }
  it { should be_file }
  it { should be_owned_by 'vagrant' }
  it { should be_grouped_into 'vagrant' }
  it { should be_mode 644 }
end

