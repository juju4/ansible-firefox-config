require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
#require 'yarjuf'
#RSpec.configure do |c|
#    c.formatter = 'JUnit'
#end

fxext_dir = '/usr/lib/firefox-addons/extensions'
if os[:family] == 'redhat'
  fxext_dir = '/usr/lib64/firefox/browser/extensions'
end

describe file("#{fxext_dir}/https-everywhere@eff.org.xpi") do
  it { should be_file }
  it { should be_mode '644' }
end
describe file("#{fxext_dir}/uBlock0@raymondhill.net.xpi") do
  it { should be_file }
  it { should be_mode '644' }
end
