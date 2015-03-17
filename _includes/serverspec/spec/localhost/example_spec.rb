require 'spec_helper'

set :os, :family => 'ubuntu'

describe package('python') do
  it { should be_installed }
end

describe service('cron') do
  it { should be_enabled.and be_running }
end

describe command('uname -a') do
  its(:stdout) {should match /Linux/ }
end
