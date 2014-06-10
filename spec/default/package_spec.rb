require 'spec_helper'

describe package('gcc') do
  it { should be_installed }
end

describe package('git') do
  it { should be_installed }
end

describe package('gnumake') do
  it { should be_installed }
end
