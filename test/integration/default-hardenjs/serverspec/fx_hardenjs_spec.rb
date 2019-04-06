require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
#require 'yarjuf'
#RSpec.configure do |c|
#    c.formatter = 'JUnit'
#end

fx_userjs = '/etc/firefox/firefox.js'

describe file("#{fx_userjs}.orig") do
  it { should be_file }
  it { should be_mode '644' }
  its(:sha256sum) { should eq '330c54106c483a89167a90f0a6d3442b83f3407af000e632bdef6f105c5f2596' }
end
describe file("#{fx_userjs}") do
  it { should be_file }
  it { should be_mode '644' }
end
