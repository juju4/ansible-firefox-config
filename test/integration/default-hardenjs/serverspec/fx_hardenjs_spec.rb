require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
#require 'yarjuf'
#RSpec.configure do |c|
#    c.formatter = 'JUnit'
#end

fx_userjs = '/etc/firefox/firefox.js'

describe file("#{fx_userjs}-pyllyukko") do
  it { should be_file }
  it { should be_mode '644' }
end
describe file("#{fx_userjs}") do
  it { should be_file }
  it { should be_mode '644' }
end
