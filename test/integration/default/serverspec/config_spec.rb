require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    c.os = backend(Serverspec::Commands::Base).check_os
  end
  c.path = "/sbin:/usr/sbin"
end

describe file("/home/vagrant/.bash_profile") do
  it { should exist }
  it { should be_file }
  it { should be_owned_by 'vagrant' }
  it { should be_grouped_into 'vagrant' }
  it { should be_mode 644 }
end

